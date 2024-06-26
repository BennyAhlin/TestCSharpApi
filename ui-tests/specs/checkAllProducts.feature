Feature: As user I want to be able to see the correct products listed when I have chosen a category so that I can easily filter the product list by category.


  Scenario: Check that the "Alla"-category shows the right products.
    Given that I am on the product page
    When I choose the category "Alla"
    Then I should see the product "Basic tomatsås"
    And I should see the product "Mjöliga makaroner"
    And I should see the product "Lök"
    And I should see the product "Lax"
    And I should see the product "Bugatti"
    And I should see the product "Sparris"
    And I should see the product "Champagne"
    And I should see the product "Potatis"
    And I should see the product "Rysk Caviar"
    And I should see the product "Apa"
    And I should see the product "Tiger"
    And I should see the product "Bläckfisk"
    And I should see the product "Menaid"
    And I should see the product "Dan"
    And I should see the product "Benny"



