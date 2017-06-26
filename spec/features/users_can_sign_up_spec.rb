require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Person can sign up and can see a welcome page" do
    visit "/users/new"
    fill_in "Username", with: "Random_username"
    fill_in "Email", with: "random@email.com"
    fill_in "Password", with: "password"
    fill_in "Confirm password", with: "password"
    click_button "Sign up"
    expect(page).to have_content("Welcome, Random_username")
  end
end
