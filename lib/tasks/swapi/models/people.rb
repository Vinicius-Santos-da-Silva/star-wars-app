class PeopleModel  
    
    def findAll(page=1)
        peoples = Swapi.findAll('people')
    
        lista_peoples = Array.new
        peoples.each{ |people| 

            people_entity = People.new()
            people_entity[:id]          = Swapi.get_id_from_url(people["url"])
            people_entity[:name]        = people["name"]
            people_entity[:birth_year]  = people["birth_year"]
            people_entity[:eye_color]   = people["eye_color"]
            people_entity[:hair_color]  = people["hair_color"]
            people_entity[:gender]      = people["gender"]
            people_entity[:height]      = people["height"]
            people_entity[:homeworld]   = Swapi.get_id_from_url(people["homeworld"])
            people_entity[:mass]        = people["mass"]
            people_entity[:skin_color]  = people["skin_color"]

            next if not people_entity.save

            
            people["species"].each{ |specie_url|  
                
                specie_id = Swapi.get_id_from_url(specie_url)
                
                people_specie = PeopleSpecies.new()
                people_specie[:people_id] = people_entity[:id]
                people_specie[:specie_id] = specie_id
                people_specie.save

            }

            people["starships"].each{ |starship_url|  
                
                starship_id = Swapi.get_id_from_url(starship_url)
                
                begin
                    starship = Starship.find(starship_id)
                rescue => e
                    next
                end
                

                people_starship = PeopleStarships.new()
                people_starship[:people_id] = people_entity[:id]
                people_starship[:starships_id] = starship_id
                people_starship.save

            }

            lista_peoples << people_entity
        }

        return lista_peoples

    end
end

