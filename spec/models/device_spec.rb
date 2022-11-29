require 'rails_helper'

RSpec.describe Device, type: :model do
  describe '#validations' do
    let!(:device) { build(:device) }
    it 'tests that factory is valid' do
      expect(device).to be_valid 
      device.save!
      device2 = build(:device)
      expect(device2).to be_valid
    end

    
    it 'has an valid phone_name' do
      device.phone_name = ''
       expect(device).not_to be_valid
       expect(device.errors[:phone_name]).to include("can't be blank")
     end
     it 'has an invalid model_no' do
      device.model_no = ''
       expect(device).not_to be_valid
       expect(device.errors[:model_no]).to include("can't be blank")
     end
     
     it 'has an invalid MRP' do
      device.mrp =  ''
       expect(device).not_to be_valid
       expect(device.errors[:mrp]).to include("can't be blank")
     end
      
     it 'has an valid Selling Price' do
      device.sp =  ''
       expect(device).not_to be_valid
       expect(device.errors[:sp]).to include("can't be blank")
     end
      
     it 'has an invalid Availability' do
      device.availability_status =  ''
       expect(device).not_to be_valid
       expect(device.errors[:availability_status]).to include("can't be blank")
     end 
     it 'has an invalid IMEI' do
      device.imei =  ''
       expect(device).not_to be_valid
       expect(device.errors[:imei]).to include("can't be blank")
     end
     it 'Length of IMEI no must be 15 digit' do
      device.imei = 123456789012345
      expect(device).to be_valid
     end
    
 end

end
