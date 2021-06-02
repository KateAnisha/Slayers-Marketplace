class Job < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :amount, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 1 }
end
