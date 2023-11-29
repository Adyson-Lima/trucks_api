require 'rails_helper'

RSpec.describe Truck, type: :model do

  before{@truck = Truck.new}

  describe 'Testes de preenchimento do model Truck' do

    it 'truck_model consegue ser preenchido?' do
      @truck.truck_model = ''
      expect(@truck.truck_model).to eq("1313")
    end

  end

end