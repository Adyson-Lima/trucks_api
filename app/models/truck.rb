class Truck < ApplicationRecord
  validates :truck_model, :manufacturer, presence: true
end
