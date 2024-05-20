import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
/*
Given('that I am on the product page', () => {
  cy.visit('/products');
});

When('I choose the category {string}', (category) => {
  cy.get('#categories').select(category);
});
*/

Then('I should see the description {string} for the product {string}', (description, productName) => {
  cy.get('.product').contains('.product', productName).find('.description').contains(description)
});

/* No duplicate steps, this one already above
Then('I should see the description {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the description {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the description {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the description {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the description {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the description {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the description {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the description {string} for the product {string}', (a, b) => {});*/