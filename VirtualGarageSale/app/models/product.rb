class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	serialize :image, JSON # If you use SQLite, add this line
	belongs_to :user, optional: true

	validates :title, :price, :description, presence: true
	validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum aloud. You are currently at %{length}"}
	validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud. You are currently at %{length}"}
	validates :price, numericality: { only_integer: true }, length: { maximum: 7 }

	CONDITION = %w{ New Like-new Used Fair Poor }
end
