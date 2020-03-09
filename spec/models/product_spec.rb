require 'rails_helper'

RSpec.describe Product, type: :model do
  testCat = Category.new(name: "test")


  subject {
    described_class.new({name: 'Red Bookshelf', price: '248375', quantity: '23', category: testCat})
  }
  
  
  describe 'Validations' do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a price" do
      subject.price_cents = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a quantity" do
      subject.quantity = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a category id" do
      subject.category = nil
      expect(subject).to_not be_valid
    end
  end


end