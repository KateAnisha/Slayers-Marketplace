class SlayerInfo < ApplicationRecord
  belongs_to :user
  # belongs_to :race
  has_many :jobs

  has_one_attached :profile_image
end
