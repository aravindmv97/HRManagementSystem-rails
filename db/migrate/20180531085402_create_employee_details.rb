class CreateEmployeeDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_details do |t|
      t.string :emp_name
      t.string :emp_number
      t.text :emp_address
      t.integer :trainer_id

      t.timestamps
    end
  end
end
