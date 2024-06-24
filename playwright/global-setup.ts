import { chromium } from "@playwright/test";

export default async function globalSetup() {
  const browser = await chromium.launch();
  const page = await browser.newPage();
  await page.goto("https://lindsey-dev.retool.dev/auth/login");
  await page
    .getByPlaceholder("name@company.com")
    .fill("lindseymorrison+test@retool.com", { timeout: 10000 });
  await page
    .getByPlaceholder("*******************")
    .fill("RetoolWebTestPass",  { timeout: 10000 });
  await page.getByText(/^Sign in$/).click();
  await page.getByText("Welcome to Retool").click();
  const cookies = await page.context().cookies();
  process.env.COOKIES = JSON.stringify(cookies); // set this env var to store the authed page session
  await browser.close();
}