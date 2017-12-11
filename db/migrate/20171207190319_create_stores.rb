class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string  :site_id
      t.integer :region_id
      t.integer :carrier_id
      t.integer :shipper_id
      t.string  :phone
      t.string  :email
      t.string  :address
      t.string  :city
      t.string  :state
      t.string  :brand
      t.string  :supplier
      t.string  :loading_numbers
      t.string  :mm_dbm
      t.string  :manager_phone
      t.text    :notes
      t.decimal :miles, :precision=>64, :scale=>12
      t.string  :co_de
      t.string  :active

      t.timestamps
    end
  end
end
