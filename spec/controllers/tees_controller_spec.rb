require "rails_helper"

RSpec.describe TeesController, :type => :controller do
  describe "RESTful GET request for all tees" do
    it "renders all tees as json" do
      get :index
      expect(response.content_type).to eq "application/json"
    end
  end
end
