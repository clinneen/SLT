class Store < ApplicationRecord
  belongs_to  :region
  belongs_to  :carrier
  belongs_to  :shipper
  has_many    :outages

  def self.search(searchString)
    stores=Store.where("site_id like ?","%#{searchString}%")
    stores=Store.where("state like ?","%#{searchString}%") if stores.empty?
    stores=Store.where("city like ?","%#{searchString}%") if stores.empty?
    stores=Store.where("address like ?","%#{searchString}%") if stores.empty?
    stores
  end
end
