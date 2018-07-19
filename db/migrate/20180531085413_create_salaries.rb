class CreateSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :salaries do |t|
      t.string :emp_salary
      t.references :employee_detail, foreign_key: true

      t.timestamps
    end
  end
end
