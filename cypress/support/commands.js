import "@testing-library/cypress/add-commands";

Cypress.Commands.add("login", (username, password) => {
  cy.session(
    username,
    () => {
      cy.visit("https://lindsey-dev.retool.dev/auth/login"); // Change this to your Retool domain
      cy.findByPlaceholderText("name@company.com").type(username);
      cy.findByPlaceholderText("*******************").type(password);
      cy.contains(/^Sign in$/).click();
    },
    {
      validate() {
        cy.document().its("cookie").should("contain", "xsrfToken");
      },
    }
  );
});