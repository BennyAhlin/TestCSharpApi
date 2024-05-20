import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

/* No duplicate steps, this one already in checkAllLyx.js
Given('that I am on the product page', () => {});*/

/* No duplicate steps, this one already in checkAllLyx.js
When('I choose the category {string}', (a) => {});*/

Then('I should see the price {string} for the product {string}', (price, productName) => {
  cy.get('.product').contains('div.product', productName).find('.price').contains('Pris: ' + price + ' kr')
});

/* No duplicate steps, this one already above
Then('I should see the price {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the price {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the price {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the price {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the price {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the price {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the price {string} for the product {string}', (a, b) => {});*/

/* No duplicate steps, this one already above
Then('I should see the price {string} for the product {string}', (a, b) => {});*/