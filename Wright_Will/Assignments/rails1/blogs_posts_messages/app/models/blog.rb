class Blog < ActiveRecord::Base
    has_many :post, dependent: :destroy
    validates :name, :description, presence: true
end
