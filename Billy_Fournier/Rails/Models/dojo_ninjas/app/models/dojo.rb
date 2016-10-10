class Dojo < ActiveRecord::Base
  has_many :ninja
  validates :name, :location, :state, presence: true
  validates :state, length: {minimum: 2}
end
