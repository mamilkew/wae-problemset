class ChangeForeignKeyForHousingdetailmanagements < ActiveRecord::Migration[5.0]
  def change
    rename_column :housing_detail_managements, :user_id, :editor_user_id
  end
end
