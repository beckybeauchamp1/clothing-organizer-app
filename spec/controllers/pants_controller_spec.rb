require "rails_helper"

RSpec.describe PantsController, :type => :controller do
  describe "RESTful GET request for all pants" do
    it "renders all pants as json" do
      get :index
      expect(response.content_type).to eq "application/json"
    end
  end
end
