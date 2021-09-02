class PeopleModel  
    
    def findAll(page=1)
    
        lista_peoples = Array.new

        peoples = JSON.parse(Swapi.get_all "people?page=#{page}")

        peoples["results"].each{ |people| 

            people_entity = People.new()
            
            people_entity[:name]        = people["name"]
            people_entity[:birth_year]  = people["birth_year"]
            people_entity[:eye_color]   = people["eye_color"]
            people_entity[:hair_color]  = people["hair_color"]
            people_entity[:gender]      = people["gender"]
            people_entity[:height]      = people["height"]
            people_entity[:homeworld]   = people["homeworld"]
            people_entity[:mass]        = people["mass"]
            people_entity[:skin_color]  = people["skin_color"]

            lista_peoples << people_entity
        }

        if not peoples["next"].nil?
            
            next_page = page + 1

            lista_peoples.concat self.findAll(next_page)
        end

        return lista_peoples

    end
end

