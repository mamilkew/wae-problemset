class CreateHousingDetailManagements < ActiveRecord::Migration[5.0]
  def change
    create_table :housing_detail_managements do |t|
      t.string :status
      t.string :approval
      t.integer :approved_user_id

      t.timestamps
    end
  end
end
