class Equipment < ApplicationRecord
  belongs_to :user
  validates :sport, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :equipmentname, presence: true
  validates :user, presence: true
end
