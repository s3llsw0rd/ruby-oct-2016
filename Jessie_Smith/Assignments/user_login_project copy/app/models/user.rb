class User < ApplicationRecord
	validates :first_name, :last_name, :email, :age, presence: true
	validates :age, numericality: true
	validates :first_name, :last_name, length: {in:2..20}
	validates_numericality_of :age, greater_than: 10, less_than: 150
end


