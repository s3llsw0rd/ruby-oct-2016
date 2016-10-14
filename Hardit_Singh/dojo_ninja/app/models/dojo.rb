class Dojo < ActiveRecord::Base
	has_many :ninjas, :dependent => :delete_all
	validates	:name, :city, :state, presence: true
	validates :state, length: {minimum:2} 
end
