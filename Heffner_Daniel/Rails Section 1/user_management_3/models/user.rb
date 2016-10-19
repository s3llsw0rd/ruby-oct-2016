class User < ActiveRecord::Base
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, :email_address, presence: true
	validates :password, :password_confirmation, presence: true, :on => :create
	validates :password, length: { minimum: 8 }, :on => :create
	validates :password, :password_confirmation, presence: true, :on => :update, if: :password_digest_changed?
	validates :password, length: { minimum: 8 }, :on => :update, if: :password_digest_changed?
	validates :first_name, :last_name, length: { in: 2..20 }
	validates :email_address, uniqueness: true, format: {with: EMAIL_REGEX }
	has_secure_password
end
