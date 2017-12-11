class CreateOutages < ActiveRecord::Migration[5.1]
  def change
    create_table :outages do |t|
      t.integer   :store_id
      t.integer   :carrier_id
      t.string    :commodity
      t.integer   :volume
      t.datetime  :outage_time
      t.datetime  :delivery_time
      t.string    :reported_via
      t.string    :notes
      t.string    :closing_notes
      t.string    :cause
      t.integer   :user_id

      t.timestamps
    end
  end
end
