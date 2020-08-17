class Article < ApplicationRecord
	has_many :items
	has_many :articledetails
	has_one_attached :photo
end
