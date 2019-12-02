require 'open-uri'
require 'net/http'
require 'json'

class GetRequester 
    URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
    
    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
         response.body
        
    end 
    def get_requester
        # we use the JSON library to parse the API response into nicely formatted JSON
           JSON.parse(self.get_response_body).collect do |program|
            program["name"]  
          end
        end
end 
get_request = GetRequester.new
puts get_request.get_requester
