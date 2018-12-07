Feature: Ecommerce Checkout

  Scenario: I want to be able to buy an item with wire
    Given I access the homepage
    And I log into my account
    And I search for a product
    And I add the product to my cart
    When I proceed to checkout
    And I confirm the order
    And I select a wire payment option
    Then I want a confirmation that my order is complete

  Scenario: I want to be able to see my order when I check out
    Given I access the homepage
    And I log into my account
    And I search for a product
    And I add the product to my cart
    When I proceed to checkout
    Then I want to be able to check which products are in my cart
    And I want to see the number of products in my cart

    Scenario: I want to be able to buy an item with cheque
      Given I access the homepage
      And I log into my account
      And I search for a product
      And I add the product to my cart
      When I proceed to checkout
      And I confirm the order
      And I select a cheque payment option
      Then I want a confirmation that my order by cheque is complete
