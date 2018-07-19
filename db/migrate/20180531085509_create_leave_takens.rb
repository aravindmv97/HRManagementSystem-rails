class CreateLeaveTakens < ActiveRecord::Migration[5.2]
  def change
    create_table :leave_takens do |t|
      t.string :leave_type
      t.integer :days
      t.text :reason
      t.references :employee_detail, foreign_key: true

      t.timestamps
    end
  end
end
