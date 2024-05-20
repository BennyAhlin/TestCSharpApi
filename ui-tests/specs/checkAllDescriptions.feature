Feature: As user I want to be able to see the correct descriptions listed when I have chosen "Alla" or "Personer" category so that I can easily see the correct price.

  Scenario: Check that the "Alla"-category shows the right descriptions of all products.
    Given that I am on the product page
    When I choose the category "Alla"
    Then I should see the description "enkel och smaklös tomatsås" for the product "Basic tomatsås"
    And I should see the description "Svart och smakrik" for the product "Rysk Caviar"
    And I should see the description "Färdigtuggade makaroner för en hemsk upplevelse!" for the product "Mjöliga makaroner"
    And I should see the description "Dyrt och bubblar i halsen" for the product "Champagne"
    And I should see the description "potäter, sånna man äter" for the product "Potatis"
    And I should see the description "luktar och smakar illa" for the product "Lök"
    And I should see the description "firre" for the product "Lax"
    And I should see the description "grönt men skönt" for the product "Sparris"
    And I should see the description "snabbt som faen" for the product "Bugatti"
    And I should see the description "hårig" for the product "Apa"
    And I should see the description "arg" for the product "Tiger"
    And I should see the description "black ink" for the product "Bläckfisk"
    And I should see the description "hårig men snäll" for the product "Menaid"
    And I should see the description "Mullvadsdödaren" for the product "Dan"
    And I should see the description "Bländar dig till döds" for the product "Benny"


  Scenario: Check that the "Personer"-category shows the right descriptions of all products.
    Given that I am on the product page
    When I choose the category "Personer"
    And I should see the description "hårig men snäll" for the product "Menaid"
    And I should see the description "Mullvadsdödaren" for the product "Dan"
    And I should see the description "Bländar dig till döds" for the product "Benny"
