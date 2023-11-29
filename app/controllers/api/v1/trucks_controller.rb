class Api::V1::TrucksController < ApplicationController

  before_action :set_truck, only: %i[show] # show update destroy

  def index
    @trucks = Truck.all 
    render json: @trucks
  end

  def show
    render json: @truck
  end

private

def set_truck
  @truck = Truck.find(params[:id])
end

def truck_params
  params.require(:truck).permit(:truck_model, :manufacturer)
end

end