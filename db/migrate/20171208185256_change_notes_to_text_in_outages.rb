class ChangeNotesToTextInOutages < ActiveRecord::Migration[5.1]
  def change
    change_column :outages, :notes, :text
    change_column :outages, :closing_notes, :text
  end
end
