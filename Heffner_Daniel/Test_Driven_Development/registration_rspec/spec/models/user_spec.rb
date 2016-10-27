require 'spec_helper'

RSpec.describe "User Model", type: :model do
	
	before do
		@testy = User.create(first_name:'Testy', last_name:'McTesterson', email:'testy@tester.son', password:'password', password_confirmation:'password');
	end

	it 'requires a valid email' do
		user = User.new(first_name:'Jane', last_name:'Doe', email:'jane.doe@internetz', password:'password', password_confirmation:'password');
		expect(user).to be_invalid
	end

	it 'requires a unique email' do
		user = User.new(first_name:'John', last_name:'Doe', email:'testy@tester.son', password:'password', password_confirmation:'password');
		expect(user).to be_invalid
	end

	it 'requires all fields (first name, last name, email, password)' do
		user = User.new(first_name:'', last_name:'', email:'', password:'', password_confirmation:'')
		expect(user).to be_invalid
	end

	it 'requires password to be at least 6 characters long' do
		user = User.new(first_name:'John', last_name:'Doe', email:'testy@tester.son', password:'123', password_confirmation:'123');
		expect(user).to be_invalid
	end

	it 'creates a password hash in the database' do
		expect(@testy.password_digest.present?).to eq(true)
	end

end
