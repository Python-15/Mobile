require 'rails_helper'

RSpec.describe "Devices", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/devices"
      expect(response.status).to eq(200)
    end
  end
  describe '#show' do
    let(:device) { create :device }

    subject { get "/devices/#{device.id}" }

    before { subject }

    it 'returns a success response' do
      expect(response).to have_http_status(:ok)
    end
  end



end
