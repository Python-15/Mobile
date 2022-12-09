require 'rails_helper'

RSpec.describe "Devices", type: :request do
 
  let(:brand) { create :brand }
  let!(:device) {create(:device, brand_id: brand.id)}

  describe "GET /index" do
    it "returns http success" do
      get "/devices"
      expect(response.status).to eq(200)
    end
  end

  describe 'GET /show' do
     #let(:device) { create :device }

    subject { get "/devices/#{device.id}" }

    before { subject }

    it 'returns a success response' do
      expect(response).to have_http_status(:ok)
    end
  end
  
  describe "GET #showallphonesbybrand" do
  
 
   subject { get "/devices/showallphonesbybrand?name=#{brand.name}"}
   
   before { subject }
   it 'returns a sucess response' do
    expect(response).to have_http_status(:ok)
   end
   it 'returns a proper JSON' do
    subject
    
     body = JSON.parse(response.body).deep_symbolize_keys
     #debugger
      expect(body).to eq(
      data: [
        {
          id: device.id.to_s,
            type: 'device',
            attributes: {


      phone_name: device.phone_name,
       model_no: device.model_no,
       mrp: device.mrp,
       sp: device.sp,
      availability_status: device.availability_status,
      imei: device.imei
            }
          }
   ]
   
      )
     
   end

  end

  describe "GET #searchbynames" do
  
  #let(:device) { create :device }
 
   subject { get "/devices/searchbynames?phone_name=#{device.phone_name}"}
   
   before { subject }
   it 'returns a sucess response' do
    expect(response).to have_http_status(:ok)
   end
   it 'returns a proper JSON' do
    subject
  
     body = JSON.parse(response.body).deep_symbolize_keys
     
      expect(body).to eq(
        data:
        {
          id: device.id.to_s,
            type: 'device',
            attributes: {


      phone_name: device.phone_name,
       model_no: device.model_no,
       mrp: device.mrp,
       sp: device.sp,
      availability_status: device.availability_status,
      imei: device.imei
            }
          }
        )
   end
  end

  describe "GET #availablephone" do
  
   
   subject { get "/devices/availablephone?name=#{brand.name}"}
   
    before { subject }
    it 'returns a sucess response' do
    expect(response).to have_http_status(:ok)
   end
   it 'returns a proper JSON' do
    subject
     
     body = JSON.parse(response.body).deep_symbolize_keys
     #debugger
      expect(body).to eq(
        data: [
          {
            id: device.id.to_s,
              type: 'device',
              attributes: {
  
  
        phone_name: device.phone_name,
         model_no: device.model_no,
         mrp: device.mrp,
         sp: device.sp,
        availability_status: device.availability_status,
        imei: device.imei
              }
            }
     ]
     
        )
       
     end
  
    end

      describe "PATCH #update" do
        
      subject { patch "/devices/#{device.id}"}

      before { subject }
    it 'returns a sucess response' do
    expect(response).to have_http_status(:ok)
    end

    it 'returns a proper JSON' do
      subject

      body = JSON.parse(response.body).deep_symbolize_keys
      
        expect(body).to eq(
          data:
          {
            id: device.id.to_s,
              type: 'device',
              attributes: {


        phone_name: device.phone_name,
        model_no: device.model_no,
        mrp: device.mrp,
        sp: device.sp,
        availability_status: device.availability_status,
        imei: device.imei
              }
            }
          )
    end
  end

        
     describe "GET #searchbypricerange" do
    
     subject { get "/devices/searchbypricerange?min_price=#{device.sp}&max_price=50000"}
   
     before { subject }
    it 'returns a sucess response' do
   expect(response).to have_http_status(:ok)
    end
    it 'returns a proper JSON' do
      subject
      body = JSON.parse(response.body).deep_symbolize_keys
      #debugger
       expect(body).to eq(
        data: [
          {
            id: device.id.to_s,
              type: 'device',
              attributes: {
  
  
        phone_name: device.phone_name,
         model_no: device.model_no,
         mrp: device.mrp,
         sp: device.sp,
        availability_status: device.availability_status,
        imei: device.imei
              }
            }
     ]
     
        )
       
     end
  
    end
  end
   


   
   

  






