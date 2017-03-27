class SurgeryGroup < ApplicationRecord
  validates :group, presence: true

  has_many :surgeries
end
