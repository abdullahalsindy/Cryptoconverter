require 'rails_helper.rb'


FactoryBot.define do
  factory :user do
    email {'sample@gmail.com'}
    password  {'somepassword'}
    
  end
end

#RSpec.describe CoinController, type: :controller 
describe  CoinsController do
  sign_me_in
  
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
    
    it "@calculator should not be nil" do
            get :index
            expect(assigns(@calculator).nil?).to eq(false)
    end
    
    it "If the exchange is nil should prompt for help" do
      @input = 'STI'
      @output = 'UTS'
      @exchange = CryptoCompare.new.request(@input,@output)
      expect(@exchange.nil?).to be true
    
    end
    #pass
    describe "GET index input parameter" do
        it "input should be equal to params :inpu" do
            params = {:input => "ASD"}
            get :index, params
            expect(assigns(:input)).to eq('ASD')
        end
        
        it "input should be equal to 'BTC' if no params passed" do
            get :index
            expect(assigns(:input)).to eq('BTC')
        end
    end
    
   describe " GET index output parameter" do
        it "output should be equal to aparms :output or 'USD'" do
            params = {:output => "EUR"}
            get :index, params
            expect(assigns(:output)).to eq('EUR')
        end
        
        it "output should be equal to 'USD' if no params passed" do
            get :index
            expect(assigns(:output)).to eq('USD')
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
    
    describe "@input should bet set to a default value" do
        it "@input should be equal to BTC" do
            params = {:input => "BTC", :output => 'USD',:qty => '1'}
            get :index
            expect(assigns(:input)).to eq('BTC')
        end
    end
    
    describe "@qty should be an integer when :qty is a string" do
        it "@qty should not be a string" do
            params = {:input => "BTC", :output => 'USD',:qty => '10'}
            get :index,params
            expect(assigns(:qty)).not_to be_a_kind_of(String)
        end
        
        it "@qty should not be a string when input other htan a number" do
            params = {:input => "BTC", :output => 'USD',:qty => 'not a number'}
            get :index,params
            expect(assigns(:qty)).not_to be_a_kind_of(String)
        end
        
        it "@qty should be a integer" do
            params = {:input => "BTC", :output => 'USD',:qty => '10'}
            get :index,params
            expect(assigns(:qty)).to be_a_kind_of(Float)
        end
    end
    
    describe "@qty should be set to a default value" do
        it "@qty should be equal to 1" do
            params = {:input => "BTC", :output => 'USD',:qty => ''}
            get :index,params
            expect(assigns(:qty)).to eq(1)
        end
    end
    
    describe "@qty should be set to params :qty" do
        it "@qty should be equal to 1" do
            params = {:input => "BTC", :output => 'USD',:qty => '5'}
            get :index,params
            expect(assigns(:qty)).to eq(5)
        end
    end
    
    describe "@qty should be greater than 0" do
        it "should not be negative" do
            params = {:input => "BTC", :output => 'USD',:qty => '-5'}
            get :index,params
            expect(assigns(:qty)).to be > 0
        end
        
        it "should not be zero" do
            params = {:input => "BTC", :output => 'USD',:qty => '0'}
            get :index,params
            expect(assigns(:qty)).to be > 0
        end
    end
    
    describe "test" do
        it "test" do
            params = {:input => "BTC", :output => 'USD',:qty => '5'}
            get :index,params
            expect(assigns(:qty)).to eq(5)
        end
    end

  end
end
