class VehicleModel < ApplicationRecord
  belongs_to :brand
  has_many :variants
  belongs_to :vehicle_type
  has_many :upcoming_vehicles
  has_many_attached :model_images
  has_many :reviews
end
