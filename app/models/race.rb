class Race < ApplicationRecord
  has_many :slayer_info, dependent: :destroy
end
