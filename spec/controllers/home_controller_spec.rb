require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #trade" do
    it "returns http success" do
      get :trade
      expect(response).to have_http_status(:success)
    end
  end

end
