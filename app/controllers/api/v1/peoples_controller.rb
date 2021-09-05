class Api::V1::PeoplesController < ApplicationController
    
    def index
        peoples = People.limit(params[:limit]).offset(params[:offset])
        render json: peoples, status: 200
    end

    def show
        people = People.find(params[:id]).as_json
        
        people["starships"] = Array.new
        people["species"] = Array.new

        starships = PeopleStarships.where(:people_id => params[:id])
        species   = PeopleSpecies.where(:people_id => params[:id])
        
        starships.each{ |starship|  
            people["starships"] << Starship.find(starship[:starships_id])
        }

        species.each{ |specie|  
            people["species"] << Species.find(specie[:specie_id])
        }
        
        people["homeworld"] = Planet.find(people["homeworld"])
        
        render json: people , status: 200
    end
end