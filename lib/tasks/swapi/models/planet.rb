class PlanetModel  
    
    def findAll(page=1)
        planets = Swapi.findAll('planets')
    
        lista_planets = Array.new
        
        planets.each{ |planet| 

            planet_entity = Planet.new()

            planet_entity[:id]          = Swapi.get_id_from_url(planet["url"])
            planet_entity[:name]  = planet["name"]
            planet_entity[:diameter]  = planet["diameter"]
            planet_entity[:rotation_period]  = planet["rotation_period"]
            planet_entity[:orbital_period]  = planet["orbital_period"]
            planet_entity[:gravity]  = planet["gravity"]
            planet_entity[:population]  = planet["population"]
            planet_entity[:climate]  = planet["climate"]
            planet_entity[:terrain]  = planet["terrain"]
            planet_entity[:surface_water]  = planet["surface_water"]

            next if not planet_entity.save

            lista_planets << planet_entity
        }

        return lista_planets

    end
end

