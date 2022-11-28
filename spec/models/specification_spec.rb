require 'rails_helper'

RSpec.describe Specification, type: :model do

  describe '#validations' do
  let(:specification) { build(:specification) }
  it 'tests that factory is valid' do
    expect(specification).to be_valid 
    specification.save!
    spec2 = build(:specification)
    expect(spec2).to be_valid
  end
  it 'camera should be present' do
    specification.camera =  ''
     expect(specification).not_to be_valid
     expect(specification.errors[:camera]).to include("can't be blank")
   end
   it 'Ram should be present' do
    specification.ram =  ''
     expect(specification).not_to be_valid
     expect(specification.errors[:ram]).to include("can't be blank")
   end 
   it 'storage should be valid' do
    specification.storage =  ''
     expect(specification).not_to be_valid
     expect(specification.errors[:storage]).to include("can't be blank")
   end  
   it 'battery should be valid' do
    specification.battery =  ''
     expect(specification).not_to be_valid
     expect(specification.errors[:battery]).to include("can't be blank")
   end  
   it 'Os should be valid' do
    specification.os_type =  ''
     expect(specification).not_to be_valid
     expect(specification.errors[:os_type]).to include("can't be blank")
   end  
end

end
