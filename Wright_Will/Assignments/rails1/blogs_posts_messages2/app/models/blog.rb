class Blog < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    has_many :owners
    validates :name, :description, presence: true
end
