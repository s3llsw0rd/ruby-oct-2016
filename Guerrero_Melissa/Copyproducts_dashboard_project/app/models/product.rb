class Product < ActiveRecord::Base
	belongs_to :category
	has_many :comments
	validates :name, :price, :description, presence: true
end
