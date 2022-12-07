require 'rails_helper'

RSpec.describe "Specifications", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/specifications"
      expect(response.status).to eq(200)
    end
  end
  describe '#show' do
    let(:specification) { create :specification }

    subject { get "/specifications/#{specification.id}" }

    before { subject }

    it 'returns a success response' do
      expect(response).to have_http_status(:ok)
    end
  end
end