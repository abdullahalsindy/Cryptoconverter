require 'httparty'
require 'json'

class CryptoCompare
  attr_reader :base_uri, :parameters
  
  def initialize
    @base_uri = "https://min-api.cryptocompare.com"
    @price_api_uri = "/data/price"
    @history_to_day_api = "/data/histoday"
  end 

  def request input, output
    uri = @base_uri + @price_api_uri + convert_single(input,output) 
    response = HTTParty.get(uri)
    my_hash = JSON.parse(response.to_s)
    my_hash[output]
    
  end
  
  def http_request api, parameters
    uri = @base_uri + api + parameters
    response = HTTParty.get(uri)
  end
  
  def convert_single input, output
    "?fsym=#{ input }&tsyms=#{ output }"
  end 
  
  def convert_multiple input, output
    "?fsym=#{ input }&tsyms=#{ output }" 
  end

  #accepts symbol to convert from as a string, symbol to convert to as a string, and limit as an int
  #returns an array of hashs
  #hashs are in the form 
  #{"time"=>(POSIX time) as float, "close"=>float, "high"=>float, "low"=>float, "open"=>float, "volumefrom"=>flaot, "volumeto"=>float}
  #currently returns day(s) according to limit up to and including the closest day at 12:00:00 AM UTC
  # Ex. if limit is 1 (the minimum) you would receive an array of size 2 the two most recent days
  def history_to_day from_symbol, to_symbol, limit
    time = Time.now.to_i
    response = http_request @history_to_day_api, "?fsym=#{ from_symbol }&tsym=#{to_symbol}&limit=#{ limit }&aggregate=1&toTs=#{ time }"
    response['Data']
  end
  
  def json_to_hash json
  
  end
  
  
end