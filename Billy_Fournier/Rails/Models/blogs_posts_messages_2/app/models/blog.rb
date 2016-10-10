class Blog < ActiveRecord::Base
  has_many :posts
  has_many :owners
end
