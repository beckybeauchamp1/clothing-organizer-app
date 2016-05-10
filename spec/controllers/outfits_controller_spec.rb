require "rails_helper"

RSpec.describe OutfitsController, :type => :controller do
  describe "RESTful GET request" do
    it "renders all outfits as json" do
      get :index
      expect(response.content_type).to eq "application/json"
    end
  end
end
