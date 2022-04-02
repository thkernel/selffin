require 'test_helper'

class IncomeExpenseItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @income_expense_item = income_expense_items(:one)
  end

  test "should get index" do
    get income_expense_items_url
    assert_response :success
  end

  test "should get new" do
    get new_income_expense_item_url
    assert_response :success
  end

  test "should create income_expense_item" do
    assert_difference('IncomeExpenseItem.count') do
      post income_expense_items_url, params: { income_expense_item: { amount: @income_expense_item.amount, income_expense_id: @income_expense_item.income_expense_id, percenatge: @income_expense_item.percenatge, status: @income_expense_item.status, uid: @income_expense_item.uid } }
    end

    assert_redirected_to income_expense_item_url(IncomeExpenseItem.last)
  end

  test "should show income_expense_item" do
    get income_expense_item_url(@income_expense_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_income_expense_item_url(@income_expense_item)
    assert_response :success
  end

  test "should update income_expense_item" do
    patch income_expense_item_url(@income_expense_item), params: { income_expense_item: { amount: @income_expense_item.amount, income_expense_id: @income_expense_item.income_expense_id, percenatge: @income_expense_item.percenatge, status: @income_expense_item.status, uid: @income_expense_item.uid } }
    assert_redirected_to income_expense_item_url(@income_expense_item)
  end

  test "should destroy income_expense_item" do
    assert_difference('IncomeExpenseItem.count', -1) do
      delete income_expense_item_url(@income_expense_item)
    end

    assert_redirected_to income_expense_items_url
  end
end
