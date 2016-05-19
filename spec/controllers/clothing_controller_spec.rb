require "rails_helper"

RSpec.describe ClothingController, :type => :controller do
  describe "RESTful GET Request" do
    it "renders all clothing" do
      get :index
      expect(response.content_type).to eq "application/json"
    end
  end
end
