require 'test_helper'

class IncomeExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @income_expense = income_expenses(:one)
  end

  test "should get index" do
    get income_expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_income_expense_url
    assert_response :success
  end

  test "should create income_expense" do
    assert_difference('IncomeExpense.count') do
      post income_expenses_url, params: { income_expense: { income_id: @income_expense.income_id, status: @income_expense.status, uid: @income_expense.uid, user_id: @income_expense.user_id } }
    end

    assert_redirected_to income_expense_url(IncomeExpense.last)
  end

  test "should show income_expense" do
    get income_expense_url(@income_expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_income_expense_url(@income_expense)
    assert_response :success
  end

  test "should update income_expense" do
    patch income_expense_url(@income_expense), params: { income_expense: { income_id: @income_expense.income_id, status: @income_expense.status, uid: @income_expense.uid, user_id: @income_expense.user_id } }
    assert_redirected_to income_expense_url(@income_expense)
  end

  test "should destroy income_expense" do
    assert_difference('IncomeExpense.count', -1) do
      delete income_expense_url(@income_expense)
    end

    assert_redirected_to income_expenses_url
  end
end
