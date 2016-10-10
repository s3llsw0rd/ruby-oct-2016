class User < ActiveRecord::Base
	validates :alias, :reputation, :class, presence: true
	def self.userTotal
		User.count
	end
end
