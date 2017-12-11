class CreateRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :fd
      t.string :fd_phone
      t.string :fd_email
      t.string :fa
      t.string :fa_phone
      t.string :fa_contact

      t.timestamps
    end
  end
end
