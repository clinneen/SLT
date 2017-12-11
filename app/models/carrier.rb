class Carrier < ApplicationRecord
  has_many :stores
  has_many :outages
end
