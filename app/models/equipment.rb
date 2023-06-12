class Equipment < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :sport, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :equipmentname, presence: true
  validates :user, presence: true
  has_one_attached :photo
end
