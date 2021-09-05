class StarshipModel  
    
    def findAll(page=1)
        
        starships = Swapi.findAll('starships')
    
        lista_starships = Array.new
        
        starships.each{ |starship| 

            starship_entity = Starship.new()
            
            starship_entity[:id]          = Swapi.get_id_from_url(starship["url"])
            starship_entity[:name]  = starship["name"]
            starship_entity[:model]  = starship["model"]
            starship_entity[:starship_class]  = starship["starship_class"]
            starship_entity[:manufacturer]  = starship["manufacturer"]
            starship_entity[:cost_in_credits]  = starship["cost_in_credits"]
            starship_entity[:length]  = starship["length"]
            starship_entity[:crew]  = starship["crew"]
            starship_entity[:passengers]  = starship["passengers"]
            starship_entity[:max_atmosphering_speed]  = starship["max_atmosphering_speed"]
            starship_entity[:hyperdrive_ratin]  = starship["hyperdrive_rating"]
            starship_entity[:MGLT]  = starship["MGLT"]
            starship_entity[:cargo_capacity]  = starship["cargo_capacity"]
            starship_entity[:consumables]  = starship["consumables"]

            next if not starship_entity.save

            lista_starships << starship_entity
        }

        return lista_starships

    end
end

