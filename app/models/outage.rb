class Outage < ApplicationRecord
  belongs_to :store
  belongs_to :carrier
  belongs_to :user
end
