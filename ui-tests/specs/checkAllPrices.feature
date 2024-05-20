Feature: As user I want to be able to see the correct price listed when I have chosen "Alla" or "Personer" category so that I can easily see the correct price.


  Scenario: Check that the "Alla"-category shows the right price of all products.
    Given that I am on the product page
    When I choose the category "Alla"
    Then I should see the price "10" for the product "Basic tomatsås"
    And I should see the price "15" for the product "Mjöliga makaroner"
    And I should see the price "6" for the product "Lök"
    And I should see the price "40" for the product "Lax"
    And I should see the price "1230123" for the product "Bugatti"
    And I should see the price "25" for the product "Sparris"
    And I should see the price "150" for the product "Champagne"
    And I should see the price "12" for the product "Potatis"
    And I should see the price "100" for the product "Rysk Caviar"
    And I should see the price "5000" for the product "Apa"
    And I should see the price "3000" for the product "Tiger"
    And I should see the price "2000" for the product "Bläckfisk"
    And I should see the price "1988" for the product "Menaid"
    And I should see the price "1988" for the product "Dan"
    And I should see the price "1988" for the product "Benny"

  Scenario: Check that the "Personer"-category shows the right price of all products.
    Given that I am on the product page
    When I choose the category "Personer"
    And I should see the price "1988" for the product "Menaid"
    And I should see the price "1988" for the product "Dan"
    And I should see the price "1988" for the product "Benny"

