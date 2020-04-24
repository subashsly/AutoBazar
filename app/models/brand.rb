class Brand < ApplicationRecord
	has_many :vehicle_model
	has_one_attached :brand_image

end
