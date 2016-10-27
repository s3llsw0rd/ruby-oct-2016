require 'spec_helper'
RSpec.feature "Ninja Creation", :type => :feature do

	scenario "User enters valid information" do
		visit "/"
		
		fill_in "Ninja Name", :with => "Naruto"
		fill_in "Ninja Description", :with => "Fictional ninja from a ridiculous manga and anime that has spawned numerous licensed cash-ins."
		click_button "Submit"

		expect(current_path).to eq("/success")
		expect(page).to have_text("Form submitted successfully!")
	end

	scenario "User enters no information" do
		visit "/"

		click_button "Submit"

		expect(page).to have_text("Sorry, failed to submit form.")
		expect(page).to have_text("Name is required.")
		expect(page).to have_text("Description is required.")
	end

end