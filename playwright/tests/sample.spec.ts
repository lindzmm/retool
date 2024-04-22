import { test, expect } from "@playwright/test";
import config from "../../config";

console.log(test);
test.describe("User Management", () => {
  test("opens the app", async ({ page }) => {
    await page.goto("https://lindsey-dev.retool.dev/auth/login");
    await page
      .getByPlaceholder("name@company.com")
      .fill(config.email, { timeout: 10000 });
    await page
      .getByPlaceholder("*******************")
      .fill(config.password,  { timeout: 10000 });
    await page.getByText(/^Sign in$/).click();
    await page.getByText("Apps").click();
    
    await page.goto(
      "https://lindsey-dev.retool.dev/apps/9ab248e4-c76e-11ee-b8eb-1b65d2dc0584/Employee%20Data%20Explorer", { timeout: 100000 }
    );
    await page.getByPlaceholder(/Search in table/).fill("pam", { timeout: 100000 });
    await page.waitForTimeout(5000);

    const gridContainer = page.getByTestId("RetoolGrid:table1");

    await expect(gridContainer).toContainText("Pam Beesly");
    await expect(page.getByRole("gridcell")).toHaveCount(12);
  });
});