class User < ActiveRecord::Base
	has_many :friendships
	has_many :friends, through: :friendships, class_name: "User"
	belongs_to :friendship
	validates :first_name, :last_name, presence: true
end
