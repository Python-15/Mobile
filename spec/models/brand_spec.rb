require 'rails_helper'

RSpec.describe Brand, type: :model do
  describe '#validations' do
  let!(:brand) { build(:brand) }
  it 'tests that factory is valid' do
    expect(brand).to be_valid 
    brand.save!
    brand2 = build(:brand)
    expect(brand2).to be_valid
  end

  it 'has an invalid name' do
    brand.Name = ''
     expect(brand).not_to be_valid
     expect(brand.errors[:Name]).to include("can't be blank")
   end
   it 'has an valid Country of Origin' do
     brand.CountryOfOrigin = ''
     expect(brand).not_to be_valid
     expect(brand.errors[:CountryOfOrigin]).to include("can't be blank")
   end

 end

end
