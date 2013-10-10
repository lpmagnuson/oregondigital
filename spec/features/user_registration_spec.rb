require 'spec_helper'

# Validates that a user can register and then log in
describe "user registration" do
  it "should allow a new user to be created and user for logging in" do
    visit root_path
    click_link "Login"
    click_link "Sign up"

    # Using ids as the password field is ambiguous to Capybara...
    fill_in "user_email", :with => "fakey@example.com"
    fill_in "user_password", :with => "testtest"
    fill_in "user_password_confirmation", :with => "testtest"
    click_button "Sign up"

    click_link "Log Out"
    click_link "Login"
    fill_in "user_email", :with => "fakey@example.com"
    fill_in "user_password", :with => "testtest"
    click_button "Sign in"
    within(".alert-info") do
      expect(page).to have_content("Signed in successfully")
    end
  end
end
