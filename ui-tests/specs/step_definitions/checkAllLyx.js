import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given('that I am on the product page', () => {
  cy.visit('/products');
});

When('I choose the category {string}', (category) => {
  cy.get('#categories').select(category);
});

Then('I should see the product {string}', (productName) => {
  cy.get('.product .name').contains(productName);
});

/* No duplicate steps, this one already above
Then('I should see the product {string}', (a) => {});*/

/* No duplicate steps, this one already above
Then('I should see the product {string}', (a) => {});*/