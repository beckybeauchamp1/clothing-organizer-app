require "rails_helper"

RSpec.describe SkirtsController, :type => :controller do
  describe "RESTful GET request for all skirts" do
    it "renders all skirts as json" do
      get :index
      expect(response.content_type).to eq "application/json"
    end
  end
end
