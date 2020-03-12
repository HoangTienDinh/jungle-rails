require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new({name: 'Hoho', email: 'hoho@mail.com', password: '1234'})
  }

  describe 'Validations' do
    it 'Has a valid user' do
      expect(subject).to be_valid
    end

    it 'is not a valid password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end
    
    it 'has a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'has is not a valid password length' do
      subject.password = 'hi'
      expect(subject).to_not be_valid
    end
  end
end

