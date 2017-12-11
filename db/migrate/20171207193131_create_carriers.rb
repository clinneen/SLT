class CreateCarriers < ActiveRecord::Migration[5.1]
  def change
    create_table :carriers do |t|
      t.string :name
      t.string :description
      t.string :phone
      t.string :email
      t.string :ops_manager
      t.string :manager_contact

      t.timestamps
    end
  end
end
