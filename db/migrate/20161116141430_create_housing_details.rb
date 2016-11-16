class CreateHousingDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :housing_details do |t|
      t.string :category_no
      t.string :category_name
      t.string :dorm
      t.decimal :size, precision: 8, scale: 2
      t.string :air_con
      t.string :balcony
      t.string :bathroom
      t.string :kitchen
      t.string :furniture
      t.string :cleaning
      t.text :description
      t.integer :rent
      t.references :housing_detail_managements, foreign_key: true

      t.timestamps
    end
  end
end
