class AddNewFieldsToStocks < ActiveRecord::Migration[6.0]
  def change
  	add_column :stocks, :target_entry_high, :decimal
  	add_column :stocks, :image, :string

  end
end
