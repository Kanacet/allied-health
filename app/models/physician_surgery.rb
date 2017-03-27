class PhysicianSurgery < ApplicationRecord
  belongs_to :surgery
  belongs_to :physician
end
