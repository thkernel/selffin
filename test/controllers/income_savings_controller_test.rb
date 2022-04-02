require 'test_helper'

class IncomeSavingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @income_saving = income_savings(:one)
  end

  test "should get index" do
    get income_savings_url
    assert_response :success
  end

  test "should get new" do
    get new_income_saving_url
    assert_response :success
  end

  test "should create income_saving" do
    assert_difference('IncomeSaving.count') do
      post income_savings_url, params: { income_saving: { income_id: @income_saving.income_id, status: @income_saving.status, uid: @income_saving.uid, user_id: @income_saving.user_id } }
    end

    assert_redirected_to income_saving_url(IncomeSaving.last)
  end

  test "should show income_saving" do
    get income_saving_url(@income_saving)
    assert_response :success
  end

  test "should get edit" do
    get edit_income_saving_url(@income_saving)
    assert_response :success
  end

  test "should update income_saving" do
    patch income_saving_url(@income_saving), params: { income_saving: { income_id: @income_saving.income_id, status: @income_saving.status, uid: @income_saving.uid, user_id: @income_saving.user_id } }
    assert_redirected_to income_saving_url(@income_saving)
  end

  test "should destroy income_saving" do
    assert_difference('IncomeSaving.count', -1) do
      delete income_saving_url(@income_saving)
    end

    assert_redirected_to income_savings_url
  end
end
