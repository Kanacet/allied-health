class Physician < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :occupation_title, presence: true
    validates :office_address, presence: true
    validates :office_city, presence: true
    validates :office_state, presence: true
    validates :office_zip, presence: true
    validates :phone, presence: true

  has_many :physicians_surgeries
  has_many :surgeries, through: :physicians_surgeries
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
