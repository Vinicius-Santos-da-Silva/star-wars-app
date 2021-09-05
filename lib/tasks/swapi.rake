require "./lib/tasks/swapi/swapi"
require "./lib/tasks/swapi/models/people"
require "./lib/tasks/swapi/models/planet"
require "./lib/tasks/swapi/models/starships"
require "./lib/tasks/swapi/models/species"

require 'json'

namespace :swapi do 
    task :import => :environment do 
        import_data()
    end
end

def import_data

    list_classes = [
        PlanetModel, 
        StarshipModel,
        SpecieModel,
        PeopleModel , 
    ]

    list_classes.each{ |clasz| 
        
        data_model = clasz.new
        
        list = data_model.findAll
            
    }

    
end