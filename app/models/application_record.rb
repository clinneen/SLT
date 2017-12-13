class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.search(attr, search)
    where("#{attr} like ?", "%#{search}%",)
  end
end
