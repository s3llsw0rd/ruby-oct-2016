require 'spec_helper'
describe 'registration view', :type => :feature do

	before do
		visit root_path
	end

	it 'allows successful registration' do
		fill_in 'First Name', :with => 'new'
		fill_in 'Last Name', :with => 'user'
		fill_in 'Email', :with => 'newuser@email.com'
		fill_in 'Password', :with => 'password'
		fill_in 'Password Confirmation', :with => 'password'
		click_button 'Register'
		expect(page).to have_content 'Successful Registration'
	end

end