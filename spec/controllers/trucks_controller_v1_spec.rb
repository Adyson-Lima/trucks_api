require 'rails_helper'

RSpec.describe Api::V1::TrucksController, type: :controller do

  before{@truck = Truck.create(truck_model: '113', manufacturer: 'scania')}

  describe 'GET /api/v1/trucks' do
    it 'Consegue listar todos os trucks e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end


end