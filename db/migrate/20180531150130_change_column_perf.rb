class ChangeColumnPerf < ActiveRecord::Migration[5.2]
  def change
  	remove_column :performances, :month
  	remove_column :performances, :year
  	add_column :performances, :quater, :integer
  	add_column :performances, :from, :date
  	add_column :performances, :to, :date

  end
end
