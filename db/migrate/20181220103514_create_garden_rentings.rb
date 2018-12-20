class CreateGardenRentings < ActiveRecord::Migration[5.2]
  def change
    create_table :garden_rentings do |t|
      t.references :garden, foreign_key: true
      t.references :user, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
