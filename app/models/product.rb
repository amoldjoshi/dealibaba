class Product < ApplicationRecord
	has_one_attached :picture
	has_one_attached :animation
end
