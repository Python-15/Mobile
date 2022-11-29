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
    brand.name = ''
     expect(brand).not_to be_valid
     expect(brand.errors[:name]).to include("can't be blank")
   end
   it 'Brand name should be unique' do
    brand1 = create(:brand)
    expect(brand1).to be_valid
    dublicate = build(:brand, name: brand1.name)
    expect(dublicate).not_to be_valid
    expect(dublicate.errors[:name]).to include('has already been taken')
  end
   it 'has an valid Country of Origin' do
     brand.country_of_origin = ''
     expect(brand).not_to be_valid
     expect(brand.errors[:country_of_origin]).to include("can't be blank")
   end

 end

end
