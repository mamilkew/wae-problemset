class HousingDetailManagement < ApplicationRecord
  has_many :housing_details
  belongs_to :user
end
