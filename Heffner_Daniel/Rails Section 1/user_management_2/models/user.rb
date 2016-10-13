class User < ActiveRecord::Base
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, :email_address, :password, :password_confirmation, presence: true
	validates :first_name, :last_name, length: { in: 2..20 }
	validates :email_address, uniqueness: true, format: {with: EMAIL_REGEX }
	validates :password, length: { minimum: 8 }
	has_secure_password
end
