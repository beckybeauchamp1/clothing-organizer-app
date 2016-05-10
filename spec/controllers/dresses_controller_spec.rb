require "rails_helper"

RSpec.describe DressesController, :type => :controller do
  describe "RESTful GET request for all dresses" do
    it "renders all dresses as json" do
      get :index
      expect(response.content_type).to eq "application/json"
    end
  end
end
