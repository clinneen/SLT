class ChangeLoadingNumbersToText < ActiveRecord::Migration[5.1]
  def change
    change_column :stores, :loading_numbers, :text
  end
end
