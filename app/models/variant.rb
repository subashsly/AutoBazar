class Variant < ApplicationRecord
  # vehicle features
  has_one :instrumentation
  has_one :comfort
  has_one :entertainment
  has_one :safety
  has_one :security
  has_one :miscellaneous
  has_one :exterior
  has_one :bike_feature

  # vehicle specification
  has_one :wheel_and_tyre
  has_one :engine_and_transmission
  has_one :suspension_brakes_and_steering
  has_one :performance
  has_one :dimension_and_capacity


  has_many :old_vehicle_informations
  belongs_to :new_vehicle
end
