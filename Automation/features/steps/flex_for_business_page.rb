# frozen_string_literal: true
require 'selenium-webdriver'

flex_for_business_url = 'https://flex.orange.pl/en/flex-for-business'
flex_for_business_section = '#flexForBusinessHeaderSection'

Then('User landing on Orange Flex for business offer page') do
  $driver.current_url.eql?(flex_for_business_url)
  wait_until_element_is_displayed_css(flex_for_business_section)
end
