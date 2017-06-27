require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Person can sign up and can see a welcome page" do
    visit "/users/new"
    fill_in "Username", with: "Random_username"
    fill_in "Email", with: "random@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    expect(page).to have_content("Welcome, Random_username")
  end

  scenario "Person cannot sign up with an empty field" do
    visit "/users/new"
    click_button "Sign up"
    expect(page).to have_current_path("/users/new")
  end
end
