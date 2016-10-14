class User < ActiveRecord::Base
	validates	:first_name, :last_name, presence: true, length: {minimum:2} 
	validates	:email, :age,  presence: true
	validates_numericality_of :age, on: :create
	validates_inclusion_of :age, :in => 10...150
end
