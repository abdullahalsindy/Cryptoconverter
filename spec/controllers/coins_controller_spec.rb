require 'rails_helper.rb'

#RSpec.describe CoinController, type: :controller 
describe  CoinsController do
    context "when testing the coins_controller controller" do
    
    it "The get_coins method should return an array" do
        @coin = Coin.get_coins
        expect(@coin.nil?).to be false
    end
    #pass
    it "when the calculator is created instance should not be nil" do
        @calculator = CryptoCompare.new
        expect(@calculator.nil?).to be false
    end
    #pass
    it "If the exchange is nil should prompt for help" do
    @input = 'STI'
    @output = 'UTS'
    @exchange = CryptoCompare.new.request(@input,@output)
    expect(@exchange.nil?).to be true
    
    end
    #pass
    describe "GET index" do
        it "input should be equal to aparms :input or 'BTC'" do
            params = {:input => "BTC",format: :json}
            get :index, params

            expect(response.status).to eq(401)
        end
    end
   describe "GET index output" do
        it "output should be equal to aparms :output or 'USD'" do
            params = {:output => "BTC",format: :json}
            get :index, params

            expect(response.status).to eq(401)
        end
    end
    it "exchange does not come back as a nil value" do 
        @input = 'BTC'
        @output = 'USD'
        @exchange = CryptoCompare.new.request(@input,@output)
        expect(@exchange.nil?).to be false
    end  
    #pass
    it "data for graph does not return as nil" do 
        @input = 'BTC'
        @output = 'USD'
        @graphdata = CryptoCompare.new.history_to_day(@input,@output,30)
        expect(@graphdata.nil?).to be false
    end
    #pass
    it "graph data is vaild" do
        @input = 'BTC'
        @output = 'USD' 
        @data = CryptoCompare.new.history_to_day(@input, @output, 30).map {|x| [x.values[0]*1000.0,x.values[1]]}
        @graphData = CryptoCompare.new.history_to_day(@input, @output, 30)
        #expect(@data).to eq(@graphData[0][0] * 1000)
        expect(@data).not_to be_empty
    end
    end
    end
