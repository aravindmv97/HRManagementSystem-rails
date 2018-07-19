class CreateHolidays < ActiveRecord::Migration[5.2]
  def change
    create_table :holidays do |t|
      t.string :holidays_available

      t.timestamps
    end
  end
end
