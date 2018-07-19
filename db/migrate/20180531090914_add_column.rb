class AddColumn < ActiveRecord::Migration[5.2]
  def change
    	add_column :salaries, :month, :string
  end
end
