#require 'rails_helper'
require_relative '../../lib/crypto_compare.rb' 

RSpec.describe 'CryptoCompare' do

  it 'should be defined' do
    expect { CryptoCompare }.not_to raise_error
  end
  
  @test_object = CryptoCompare.new
  
  describe '#get_price' do
    pending "add some examples to (or delete) #{__FILE__}"
    #expect()
    end

  describe '#history_to_day' do
    before(:each)  { @test_object = CryptoCompare.new }
    it 'should be defined' do
      expect(@test_object).to respond_to(:history_to_day)
    end
    
    it 'should return an array of hashs' do
      @array = @test_object.history_to_day('BTC','USD',1)
      expect(@array).to be_an Array
      expect(@array[0]).to be_an Hash
    end
    
  end
   
end
