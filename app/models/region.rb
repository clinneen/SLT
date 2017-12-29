class Region < ApplicationRecord
  has_many :stores
  has_many :outages, through: :stores

  def self.get_names
    arr=[]
    Region.all.each do |i|
      arr<<i.name
    end
    arr
  end
end
