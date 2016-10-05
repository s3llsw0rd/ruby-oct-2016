require_relative 'Planet'
class Solar_System
    attr_accessor :name, :description, :population, :all_planets
    def initialize name='Milky Way'
        @name = name
        @all_planets = []
        self
    end
    def count_planets
        @all_planets.count
    end
    def add_planet name, description
        @all_planets.push( Planet.new name, description)
    end
    def supernova
        @all_planets = []
    end

end
