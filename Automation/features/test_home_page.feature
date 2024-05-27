Feature: Verify user is able to load home page and see required content on it

  Scenario: Enter home page
    Given User load orange flex home page
    #When User closes cookies pop-up
    Then Header is present on page

  Scenario: User is able to see and play tiktok videos on page
    Given User is on home page
    When User scrolls to tiktok videos section
    And User scrolls to the last video
    And User triggers video to be played
    Then Video is on autoplay