class ColumnTypeChange < ActiveRecord::Migration[5.2]
  def change
  	change_column :salaries, :emp_salary, :integer
  end
end
