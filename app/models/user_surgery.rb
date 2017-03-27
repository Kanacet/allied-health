class UserSurgery < ApplicationRecord
  belongs_to :user
  belongs_to :surgery
end
