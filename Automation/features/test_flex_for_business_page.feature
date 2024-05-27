Feature: Verify user is able to go on Orange Flex for business page and see required content on it

  Scenario: Enter Orange Flex for business page from home page
    Given User is on home page and cookie pop-up is closed
    When User press Offer button in nav bar
    And User press Orange Flex for business button
    Then User landing on Orange Flex for business offer page