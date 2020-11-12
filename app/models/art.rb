class Art < ApplicationRecord
  mount_uploader :image_url, ImageUploader
  belongs_to :user
  has_many :comments
  has_many :images
  has_many :likes
end
