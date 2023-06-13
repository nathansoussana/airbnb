class Equipment < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  
  validates :sport, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :equipmentname, presence: true
  validates :user, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
