class Api::V1::TrucksController < ApplicationController

  before_action :set_truck, only: %i[show update destroy] # show update destroy

  def index
    @trucks = Truck.all 
    render json: @trucks
  end

  def show
    render json: @truck
  end

  def create
    @truck = Truck.new(truck_params)
    if @truck.save
      render json: @truck, status: :created, location: api_v1_truck_url(@truck)
    else
      render json: @truck.errors, status: :unprocessable_entity
    end
  end

  def update
    if @truck.update(truck_params)
      render json: @truck
    else
      render json: @truck.errors, status: :unprocessable_entity
    end 
  end

  def destroy
    @truck.destroy!
  end

private

def set_truck
  @truck = Truck.find(params[:id])
end

def truck_params
  params.require(:truck).permit(:truck_model, :manufacturer)
end

end