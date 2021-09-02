require "./lib/tasks/swapi/swapi"
require "./lib/tasks/swapi/models/people"
require 'json'

namespace :swapi do 
    
    task :import => :environment do 

        people_model = PeopleModel.new
        
        list = people_model.findAll

        list.each{ |people| 
            
            next if not people.save

            puts "\n#{people[:name]}..."
            
        }

    end
end