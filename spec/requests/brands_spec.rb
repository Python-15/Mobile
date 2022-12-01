require 'rails_helper'

RSpec.describe "Brands", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/brands"
      expect(response.status).to eq(200)
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



end
