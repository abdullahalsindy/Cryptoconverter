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
    @input = 'XBI'
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
    
    it "input should be equal to aparms output or 'USD'" do
        @output = params[:output]
        expect(@output).to eq"USD"
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
    end
    end
    end