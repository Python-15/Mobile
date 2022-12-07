require 'rails_helper'

RSpec.describe "Brands", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/brands"
      expect(response.status).to eq(200)
    end
  end

  let (:b_params) do
    {
     'name' => 'MyString', 
     'country_of_origin' => 'MyString'
     }
   end

  describe 'POST #create' do 
    
   subject { post '/brands', params:  b_params }

   it 'returns a success response' do
     subject
     expect(response).to have_http_status(:ok)
   end

   it "creates a brand" do
     expect{ subject }.to change{Brand.count}.by(1)
   end 
 
  end

 
 describe '#show' do
    let(:brand) { create :brand }

    subject { get "/brands/#{brand.id}" }

    before { subject }

    it 'returns a success response' do
      expect(response).to have_http_status(:ok)
    end
  end

  # describe '#update' do
  # let(:brand) { create :brand }
  

  # it 'returns a success response' do
  #   subject { patch "/brands/#{brand.id}" , params: b_params }
  #   expect(response).to have_http_status(:ok)
  # end

  # end
   
   
  describe '#destroy' do
   let(:brand) { create :brand }
   subject { delete "/brands/#{brand.id}" }
   it 'should delete brand' do
    brand
     expect{subject}.to change{Brand.count}.by(-1)
  end
   it 'returns a valid response' do
    subject
    expect(response).to have_http_status(:ok)
   end
  end
  


end
