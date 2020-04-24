class VehicleType < ApplicationRecord
	has_many :vehicle_model
	has_one_attached :vehicle_type_image

end
