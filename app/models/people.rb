class People < ApplicationRecord

    has_many :species
    has_many :planets
    has_many :starships

    @species = Array.new

    def save
        people = super
    end
end
