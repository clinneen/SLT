class Store < ApplicationRecord
  belongs_to  :region
  belongs_to  :carrier
  belongs_to  :shipper
  has_many    :outages
end
