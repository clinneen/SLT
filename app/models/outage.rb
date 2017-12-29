class Outage < ApplicationRecord
  belongs_to :store
  belongs_to :carrier
  belongs_to :user

  def self.search(input)
    if input[3]!='All'
      outages=Outage.joins(store: :region).where("regions.name like ?","%#{input[3]}%")
    else
      outages=Outage.all
    end
    outages=outages.where("outage_time >= ?",input[1]) if input[1]!=''
    #outages=outages.where("outage_time <= ?",input[2]) if input[2]!=''
    outages=outages.joins(:store).where("site_id like ?","%#{input[0]}%")
    #outages=Outage.joins(:carrier).where("description like ?","%#{searchString}%") if outages.empty?
    #outages=Outage.joins(:user).where("last_name like ?","%#{searchString}%") if outages.empty?
    #outages=Outage.where("notes like ? or closing_notes like ?","%#{searchString}%","%#{searchString}%") if outages.empty?
    outages
  end

end
