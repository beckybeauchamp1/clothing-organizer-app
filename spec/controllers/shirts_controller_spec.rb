require "rails_helper"

RSpec.describe ShirtsController, :type => :controller do
  describe "RESTful GET request for all shirts" do
    it "renders all shirts" do
      get :index
      expect(response.content_type).to eq "application/json"
    end
  end
end
