require 'test_helper'

class HousingDetailManagementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @housing_detail_management = housing_detail_managements(:one)
  end

  test "should get index" do
    get housing_detail_managements_url
    assert_response :success
  end

  test "should get new" do
    get new_housing_detail_management_url
    assert_response :success
  end

  test "should create housing_detail_management" do
    assert_difference('HousingDetailManagement.count') do
      post housing_detail_managements_url, params: { housing_detail_management: { approval: @housing_detail_management.approval, approved_user_id: @housing_detail_management.approved_user_id, status: @housing_detail_management.status } }
    end

    assert_redirected_to housing_detail_management_url(HousingDetailManagement.last)
  end

  test "should show housing_detail_management" do
    get housing_detail_management_url(@housing_detail_management)
    assert_response :success
  end

  test "should get edit" do
    get edit_housing_detail_management_url(@housing_detail_management)
    assert_response :success
  end

  test "should update housing_detail_management" do
    patch housing_detail_management_url(@housing_detail_management), params: { housing_detail_management: { approval: @housing_detail_management.approval, approved_user_id: @housing_detail_management.approved_user_id, status: @housing_detail_management.status } }
    assert_redirected_to housing_detail_management_url(@housing_detail_management)
  end

  test "should destroy housing_detail_management" do
    assert_difference('HousingDetailManagement.count', -1) do
      delete housing_detail_management_url(@housing_detail_management)
    end

    assert_redirected_to housing_detail_managements_url
  end
end
