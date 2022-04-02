require 'test_helper'

class IncomeSavingItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @income_saving_item = income_saving_items(:one)
  end

  test "should get index" do
    get income_saving_items_url
    assert_response :success
  end

  test "should get new" do
    get new_income_saving_item_url
    assert_response :success
  end

  test "should create income_saving_item" do
    assert_difference('IncomeSavingItem.count') do
      post income_saving_items_url, params: { income_saving_item: { amount: @income_saving_item.amount, income_saving_id: @income_saving_item.income_saving_id, percenatge: @income_saving_item.percenatge, status: @income_saving_item.status, uid: @income_saving_item.uid } }
    end

    assert_redirected_to income_saving_item_url(IncomeSavingItem.last)
  end

  test "should show income_saving_item" do
    get income_saving_item_url(@income_saving_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_income_saving_item_url(@income_saving_item)
    assert_response :success
  end

  test "should update income_saving_item" do
    patch income_saving_item_url(@income_saving_item), params: { income_saving_item: { amount: @income_saving_item.amount, income_saving_id: @income_saving_item.income_saving_id, percenatge: @income_saving_item.percenatge, status: @income_saving_item.status, uid: @income_saving_item.uid } }
    assert_redirected_to income_saving_item_url(@income_saving_item)
  end

  test "should destroy income_saving_item" do
    assert_difference('IncomeSavingItem.count', -1) do
      delete income_saving_item_url(@income_saving_item)
    end

    assert_redirected_to income_saving_items_url
  end
end
