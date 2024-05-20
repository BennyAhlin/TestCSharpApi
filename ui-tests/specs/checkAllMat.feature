Feature: As user I want to be able to see the correct products listed when I have chosen a category so that I can easily filter the product list by category.


  Scenario: Check that the "Mat"-category shows the right products.
    Given that I am on the product page
    When I choose the category "Mat"
    Then I should see the product "Potatis"
    And I should see the product "Sparris"
    And I should see the product "Lax"
