class Survey < ActiveRecord::Base
	validates :name, :location, :language, presence: true
	@validLocations = ['Mountain View', 'Dallas', 'San Francisco', 'Mars']
	validates :location, :inclusion => { :in => @validLocations }
	@validLanguages = ['Python', 'Ruby', 'Javascript', 'Klingon']
	validates :language, :inclusion => { :in => @validLanguages }
end
