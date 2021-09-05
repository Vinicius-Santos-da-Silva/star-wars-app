class SpecieModel  
    
    def findAll(page=1)
        
        species = Swapi.findAll('species')
    
        lista_species = Array.new
        
        species.each{ |specie| 

            specie_entity = Species.new()
            
            specie_entity[:id]          = Swapi.get_id_from_url(specie["url"])
            specie_entity[:name]  = specie["name"]
            specie_entity[:classification]  = specie["classification"]
            specie_entity[:designation]  = specie["designation"]
            specie_entity[:average_height]  = specie["average_height"]
            specie_entity[:average_lifespan]  = specie["average_lifespan"]
            specie_entity[:eye_colors]  = specie["eye_colors"]
            specie_entity[:hair_colors]  = specie["hair_colors"]
            specie_entity[:skin_colors]  = specie["skin_colors"]
            specie_entity[:language]  = specie["language"]
            specie_entity[:homeworld]  = Swapi.get_id_from_url(specie["homeworld"])

            next if not specie_entity.save

            lista_species << specie_entity
        }

        return lista_species

    end
end

