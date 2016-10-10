class Ninja < ActiveRecord::Base
    has_many :dojo
    belongs_to :dojo
    validates :first_name, :last_name, presence: true
end
