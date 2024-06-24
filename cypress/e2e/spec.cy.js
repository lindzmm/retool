describe("User Management", () => {
  it("opens the app", () => {
    cy.login("lindseymorrison+test@retool.com", "RetoolWebTestPass");
    cy.visit(
      "https://lindsey-dev.retool.dev/apps/9ab248e4-c76e-11ee-b8eb-1b65d2dc0584/Employee%20Data%20Explorer"
    );
    cy.findByRole("textbox", {
      name: /Search/,
      placeholder: /Search in table/,
      timeout: 10000,
    }).type("pam");

    cy.findByTestId("RetoolGrid:table1")
      .findAllByRole("gridcell")
      .should("have.length", 12)
      .and("contain", "Pam Beesly")
  });
});