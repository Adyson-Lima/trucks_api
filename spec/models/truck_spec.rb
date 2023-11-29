require 'rails_helper'

RSpec.describe Truck, type: :model do

  before{@truck = Truck.new}

  describe 'Testes de preenchimento do model Truck' do

    it 'truck_model consegue ser preenchido?' do
      @truck.truck_model = '1313'
      expect(@truck.truck_model).to eq('1313')
    end

    it 'manufacturer consegue ser preenchido?' do
      @truck.manufacturer = 'mercedez'
      expect(@truck.manufacturer).to eq('mercedez')
    end

  end

  describe 'Testes de validação do model Truck' do

    it 'Truck valido com campos obrigatorios preenchidos?' do
      @truck.truck_model = ''
      @truck.manufacturer = ''
      expect(@truck).to be_valid
    end

  end

end