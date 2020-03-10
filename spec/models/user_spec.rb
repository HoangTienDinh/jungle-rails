require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new({name: 'Hoho', email: 'hoho@mail.com', password: '1234'})
  }

  describe 'Validations' do
    it 'Has a valid name' do
      expect(subject).to be_valid
    end

    it 'Has a password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end
    
  end
end
