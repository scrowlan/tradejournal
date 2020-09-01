class AddFieldToStocks < ActiveRecord::Migration[6.0]
  def change
  	add_column :stocks, :stop_loss, :decimal
  end
end
