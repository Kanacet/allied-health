class UserPhysician < ApplicationRecord
  belongs_to :user
  belongs_to :physician
end
