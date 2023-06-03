class Equipment < ApplicationRecord
  validates :sport, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :equipmentname, presence: true
end
