require 'open-uri'

module Swapi
  class << self
    
    BASE_URL = 'http://swapi.dev/api/'

    def findAll(entity = 'people', page=1)
    
      list = Array.new

      response = JSON.parse(Swapi.get_all "#{entity}?page=#{page}")

      response["results"].each{ |data| 
          
          list << data
      }

      if not response["next"].nil?
          
          next_page = page + 1

          list.concat self.findAll(entity , next_page)
      end

      return list
    end

    def get_id_from_url(obj)
      
      if obj.nil?
        return 0;  
      end

      return obj.gsub(/[^\d]/, '')
    end

    def get_all(type)
      get type
    end

    def request(url)
      response = open("#{url}", "User-Agent" => "swapi-ruby").read
    end

    private
    def get(type, id = '')

      if id != ''
        id = "/#{id}"
      end

      response = execute_request("#{type}#{id}")
    end

    def execute_request(uri)
      response = open("#{BASE_URL}/#{uri}", "User-Agent" => "swapi-ruby").read
    end


  end
end
