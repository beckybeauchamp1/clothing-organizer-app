require "rails_helper"

RSpec.describe ShortsController, :type => :controller do
  describe "RESTful GET request for all shorts" do
    it "renders all shorts as json" do
      get :index
      expect(response.content_type).to eq "application/json"
    end
  end
end
