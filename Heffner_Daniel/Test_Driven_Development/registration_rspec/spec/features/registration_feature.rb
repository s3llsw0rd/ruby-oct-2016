require "spec_helper"
describe "Register" do
  it "prompts for the user fields" do
    visit "/"
    expect(page).to have_field('First Name')
    expect(page).to have_field('Last Name')
    expect(page).to have_field('Email')
    expect(page).to have_field('Password')
    expect(page).to have_field('Password Confirmation')
  end
  it "creates user and redirects to user's page" do
    visit "/"
    fill_in "First Name", with: "Luke"
    fill_in "Last Name", with: "Skywalker"
    fill_in "Email", with: "sky@walker.com"
    fill_in "Password", with: "forceawakened"
    fill_in "Password Confirmation", with: "forceawakened"
    click_button "Register"
    user = User.last
    expect(current_path).to eq("/users/#{user.id}")
    expect(page).to have_text("Luke Skywalker")
  end
end
