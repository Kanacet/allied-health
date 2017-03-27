class Surgery < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  has_many :users_surgeries
  has_many :physicians_surgeries
  belongs_to :surgery_group
end
