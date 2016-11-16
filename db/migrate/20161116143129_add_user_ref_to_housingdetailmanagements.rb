class AddUserRefToHousingdetailmanagements < ActiveRecord::Migration[5.0]
  def change
    add_reference :housing_detail_managements, :user, foreign_key: true
  end
end
