class User < ApplicationRecord
  has_many :equipments
  has_many :bookings, dependent: :destroy
  has_many :rented_equipment, through: :bookings, source: :equipment
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
