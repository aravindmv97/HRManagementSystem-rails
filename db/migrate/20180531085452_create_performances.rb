class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.integer :period
      t.integer :points
      t.references :employee_detail, foreign_key: true

      t.timestamps
    end
  end
end
