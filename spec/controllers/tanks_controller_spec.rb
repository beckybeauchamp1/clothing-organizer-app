require "rails_helper"

RSpec.describe TanksController, :type => :controller do
  describe "RESTful GET request for all tanks" do
    it "renders all tanks as json" do
      get :index
      expect(response.content_type).to eq "application/json"
    end
  end
end
