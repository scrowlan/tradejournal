class AddUserInfoToStock < ActiveRecord::Migration[6.0]
  def change
  	add_reference :stocks, :user, index: true, foreign_key: true
  end
end
