class AddFieldsToStocks < ActiveRecord::Migration[6.0]
  def change
  	add_column :stocks, :date, :date
  	add_column :stocks, :target_exit_1, :decimal
  	add_column :stocks, :target_exit_2, :decimal
  	add_column :stocks, :target_exit_3,:decimal
  	add_column :stocks, :timeframe, :string
  	add_column :stocks, :source, :string
  	add_column :stocks, :risk, :string
  	add_column :stocks, :notes, :string

  	rename_column :stocks, :target, :target_entry
  end
end
