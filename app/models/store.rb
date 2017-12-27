class Store < ApplicationRecord
  belongs_to  :region
  belongs_to  :carrier
  belongs_to  :shipper
  has_many    :outages

  def self.search(searchString)
    if /.[0-9]{6}/ =~ searchString then
      stores=Store.where("site_id like ?","%#{searchString}%")
    else
      stores=Store.where("city like :search or state like :search",{:search => "%#{searchString}%"})
    end
    stores
  end
end
