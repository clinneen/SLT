class Outage < ApplicationRecord
  belongs_to :store
  belongs_to :carrier
  belongs_to :user

  def self.search(input)
    outages=Outage.joins(:store).where("site_id like ?","%#{input[0]}%").order('outage_time DESC')
    outages=outages.joins(store: :region).where("regions.name like ?","%#{input[3]}%") if input[3]!='All'
    outages=outages.where("outage_time >= ?",input[1]) if input[1]!=''
    outages=outages.where("outage_time <= ?",input[2]) if input[2]!=''
    outages=Outage.joins(:carrier).where("description like ?","%#{input[0]}%").order('carrier_id DESC','outage_time DESC') if outages.empty?
    outages=Outage.joins(:user).where("last_name like ?","%#{input[0]}%").order('outage_time DESC') if outages.empty?
    outages=Outage.where("notes like ? or closing_notes like ?","%#{input[0]}%","%#{input[0]}%").order('outage_time DESC') if outages.empty?
    outages
  end

end
