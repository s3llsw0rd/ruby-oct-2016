class FakerUser
	def self.info
		fname = Faker::Name.first_name
		lname = Faker::GameOfThrones.house
		emailArg = fname + "." + lname
		info = {
			first_name: fname,
			last_name: lname,
			email_address: Faker::Internet.safe_email(emailArg)
		}
	end
end