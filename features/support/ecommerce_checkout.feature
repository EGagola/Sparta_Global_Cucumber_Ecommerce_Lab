Feature: Ecommerce Checkout

  Scenario: I want to be able to buy an item
    Given I access the homepage
    And I log into my account
    And I search for a product
    And I select a product
    And I add the product to my cart
    When I proceed to checkout
    And I confirm the order
    And I confirm my details
    And I select a payment option
    Then I want a confirmation that my order is complete
