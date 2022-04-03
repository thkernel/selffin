require 'test_helper'

class DebtTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @debt_type = debt_types(:one)
  end

  test "should get index" do
    get debt_types_url
    assert_response :success
  end

  test "should get new" do
    get new_debt_type_url
    assert_response :success
  end

  test "should create debt_type" do
    assert_difference('DebtType.count') do
      post debt_types_url, params: { debt_type: { description: @debt_type.description, name: @debt_type.name, status: @debt_type.status, uid: @debt_type.uid, user_id: @debt_type.user_id } }
    end

    assert_redirected_to debt_type_url(DebtType.last)
  end

  test "should show debt_type" do
    get debt_type_url(@debt_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_debt_type_url(@debt_type)
    assert_response :success
  end

  test "should update debt_type" do
    patch debt_type_url(@debt_type), params: { debt_type: { description: @debt_type.description, name: @debt_type.name, status: @debt_type.status, uid: @debt_type.uid, user_id: @debt_type.user_id } }
    assert_redirected_to debt_type_url(@debt_type)
  end

  test "should destroy debt_type" do
    assert_difference('DebtType.count', -1) do
      delete debt_type_url(@debt_type)
    end

    assert_redirected_to debt_types_url
  end
end
