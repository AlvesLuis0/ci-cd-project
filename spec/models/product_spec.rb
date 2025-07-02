require 'rails_helper'

RSpec.describe Product, type: :model do
  fixtures :products

  describe "validations" do
    it "is valid with valid attributes" do
      product = products :valid
      expect(product).to be_valid
    end

    it "is invalid with invalid attributes" do
      product = products :invalid
      expect(product).to be_invalid
      expect(product.errors.size).to be 3
    end
  end
end
