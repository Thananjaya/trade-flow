class Administrator < ApplicationRecord
  has_one_attached :avatar
  has_one_attached :identification_image
end
