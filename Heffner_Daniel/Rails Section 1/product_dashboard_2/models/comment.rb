class Comment < ActiveRecord::Base
  belongs_to :product
  validates :comment, :product, presence: true
end
