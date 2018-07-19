class CreateSalaryDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :salary_details do |t|
      t.string :salary
      t.references :employee_detail, foreign_key: true

      t.timestamps
    end
  end
end
