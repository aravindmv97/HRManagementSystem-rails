class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
  	remove_column :performances, :period
  	add_column :performances, :month, :string
  	add_column :performances, :year, :string
  end
end
