require 'httparty'
require 'json'

class CryptoCompare
  attr_reader :base_uri, :parameters
  
  def initialize
    @base_uri = "https://min-api.cryptocompare.com"
    @price_api_uri = "/data/price"
  end 

  def request input, output
  
    #uri_params = '?fsym=BTC&tsyms=USD,EUR'

    uri = @base_uri + @price_api_uri + convert_single(input,output) 

    response = HTTParty.get(uri)
    my_hash = JSON.parse(response.to_s)
    my_hash[output]
    
  end
  
  
  def convert_single input, output
    
    "?fsym=#{ input }&tsyms=#{ output }"
      
  end 
  
  
  def convert_multiple input, output
  
    "?fsym=#{ input }&tsyms=#{ output }"
  
  end
  
  
  def json_to_hash json
  
  end
  
end