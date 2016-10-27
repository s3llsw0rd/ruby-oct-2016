require 'spec_helper'
RSpec.describe "New View" do

	before do
		visit '/'
	end

	describe 'New Ninja Form' do
		it 'prompts for a name' do
			expect(page).to have_field('Ninja Name')
		end

		it 'prompts for a description' do
			expect(page).to have_field('Ninja Description')
		end

		it 'has a submit button' do
			expect(page).to have_button('Submit')
		end
	end

end