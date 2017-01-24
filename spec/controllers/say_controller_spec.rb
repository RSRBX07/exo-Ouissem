require 'rails_helper'

RSpec.describe SayController, type: :controller do

  describe "GET #Hello" do
    it "returns http success" do
      get :Hello
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #Goodbye" do
    it "returns http success" do
      get :Goodbye
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #Happyday" do
    it "returns http success" do
      get :Happyday
      expect(response).to have_http_status(:success)
    end
  end

end
