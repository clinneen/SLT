class Store < ApplicationRecord
  belongs_to  :region
  belongs_to  :carrier
  belongs_to  :shipper
  has_many    :outages

  def self.search(searchString)
    stores=Store.where("site_id like ?","%#{searchString}%").order(:region_id,:state,:city)
    stores=Store.where("state like ?","%#{searchString}%").order(:region_id,:state,:city) if stores.empty?
    stores=Store.where("city like ?","%#{searchString}%").order(:region_id,:state,:city) if stores.empty?
    stores=Store.where("address like ?","%#{searchString}%").order(:region_id,:state,:city) if stores.empty?
    stores
  end
end
