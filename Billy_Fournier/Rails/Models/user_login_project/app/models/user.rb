class User < ActiveRecord::Base
  validates :first_name, :last_name, :age, :email, presence: true
  validates :age, numericality: true, inclusion: {in: 10..150, message: "%{value} is not between 10 and 150"}
  validates :first_name, :last_name, length: {minimum: 2}
end
