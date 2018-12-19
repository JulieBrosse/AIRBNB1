class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :title
      t.text :content
      t.integer :price
      t.string :type_price
      t.integer :surface
      t.text :availability
      t.text :address
      t.string :plant_type

      t.timestamps
    end
  end
end
