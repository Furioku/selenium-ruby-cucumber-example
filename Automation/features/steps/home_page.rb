require 'selenium-webdriver'

home_page_url = "https://flex.orange.pl/en"
header_css_selector = '#navigation'
tiktok_videos_section = 'section#tiktoks'
roaming_tiktok_video = '//p[contains(text(),"Super easy rules of roaming? In Orange Flex!")]'
roaming_tiktok_video_play_btn = '//*[@id="tiktoks"]/div/div/div/div[1]/div[6]/div/div'
offer_btn = '//nav[@id="navigation"]//p[contains(text(),"Offer")]'
flex_for_business_btn = '//p[contains(text(),"Orange Flex for Business")]'


Given('User load orange flex home page') do
  open_page(home_page_url)
end

When('User closes cookies pop-up') do
  close_cookies_pop_up
end

Then('Header is present on page') do
  wait_until_element_is_displayed_css(header_css_selector)
end

Given('User is on home page') do
  open_page(home_page_url)
  wait_until_element_is_displayed_css(header_css_selector)
end

When('User scrolls to tiktok videos section') do
  $driver.action
        .scroll_to($driver.find_element(:css, tiktok_videos_section))
        .perform
end

When('User scrolls to the last video') do
  $driver.action
        .move_to($driver.find_element(:xpath,roaming_tiktok_video))
        .perform
end

When('User triggers video to be played') do
  click_xpath(roaming_tiktok_video_play_btn)
end

Given('User is on home page and cookie pop-up is closed') do
  open_page(home_page_url)
  close_cookies_pop_up
  wait_until_element_is_displayed_css(header_css_selector)
end

Then('Video is on autoplay') do
  $driver.find_element(:xpath,roaming_tiktok_video)
         .attribute('preload')
         .eql?('auto')
end

When('User press Offer button in nav bar') do
  wait_until_element_is_displayed_xpath(offer_btn)
  click_xpath(offer_btn)
end

When('User press Orange Flex for business button') do
  wait_until_element_is_displayed_xpath(flex_for_business_btn)
  click_xpath(flex_for_business_btn)
end