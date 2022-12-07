require 'rails_helper'

RSpec.describe "Specifications", type: :request do
  let(:specification) { create :specification }
  describe "GET /index" do
    it "returns http success" do
      get "/specifications"
      expect(response.status).to eq(200)
    end
  end
  describe '#show' do
    #let(:specification) { create :specification }

    subject { get "/specifications/#{specification.id}" }

    before { subject }

    it 'returns a success response' do
      expect(response).to have_http_status(:ok)
    end
  end
   

  describe '#destroy' do
  #let(:specification) { create :specification }
  subject { delete "/specifications/#{specification.id}" }
  it 'should delete specification' do
   specification
    expect{subject}.to change{Specification.count}.by(-1)
 end
  it 'returns a valid response' do
   subject
   expect(response).to have_http_status(:ok)
  end
 end
  
 describe "GET #showspecification" do
 
 let(:device) { create :device }

  subject { get "/specifications/showspecification?device_id=#{device.id}"}
  
  before { subject }
  it 'returns a sucess response' do
   expect(response).to have_http_status(:ok)
  end
end
#   it 'returns a proper JSON' do
#    subject
 
#     body = JSON.parse(response.body).deep_symbolize_keys
#     pp body
#      expect(body).to eq(
#        data:
#        {
#          id: specification.id.to_s,
#            type: 'specification',
#            attributes: {
#             camera: specification.camera,
#             processor: specification.processor,
#             ram: specifications.processor,
#             storage: specification.storage,
#             battery: specification.battery,
#             os_type: specification.os_type
#         }
#     },
#     image: device.img
#        )
#   end
#  end


end