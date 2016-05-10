require "rails_helper"

RSpec.describe Clothing, :type => :model do

  let(:clothing){Clothing.create(description: "Clothing in my Closet")}
  describe "attributes of Clothing" do
    it "belongs to the class Clothing" do
      expect(clothing).to be_a(Clothing)
    end
    it "to contain many shirts" do
      expect(clothing.shirts).to_not be_nil
    end
    it "to contain many pants" do
      expect(clothing.pants).to_not be_nil
    end
    it "to contain many tees" do
      expect(clothing.tees).to_not be_nil
    end
    it "to contain many skirts" do
      expect(clothing.skirts).to_not be_nil
    end
    it "to contain many shorts" do
      expect(clothing.shorts).to_not be_nil
    end
  end

end
