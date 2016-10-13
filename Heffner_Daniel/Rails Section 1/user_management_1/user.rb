class User < ActiveRecord::Base
	validates :first_name, :last_name, :email_address, presence: true
	validates :first_name, :last_name, length: { in: 2..20 }
	validates :email_address, uniqueness: true
end
