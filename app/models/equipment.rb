class Equipment < ApplicationRecord
  belongs_to :user
  has_one :booking, dependent: :destroy
  validates :sport, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :equipmentname, presence: true
  validates :user, presence: true
end
