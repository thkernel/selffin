require 'test_helper'

class ExpenseDistributionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expense_distribution = expense_distributions(:one)
  end

  test "should get index" do
    get expense_distributions_url
    assert_response :success
  end

  test "should get new" do
    get new_expense_distribution_url
    assert_response :success
  end

  test "should create expense_distribution" do
    assert_difference('ExpenseDistribution.count') do
      post expense_distributions_url, params: { expense_distribution: { expense_category_id: @expense_distribution.expense_category_id, percentage: @expense_distribution.percentage, status: @expense_distribution.status, uid: @expense_distribution.uid, user_id: @expense_distribution.user_id } }
    end

    assert_redirected_to expense_distribution_url(ExpenseDistribution.last)
  end

  test "should show expense_distribution" do
    get expense_distribution_url(@expense_distribution)
    assert_response :success
  end

  test "should get edit" do
    get edit_expense_distribution_url(@expense_distribution)
    assert_response :success
  end

  test "should update expense_distribution" do
    patch expense_distribution_url(@expense_distribution), params: { expense_distribution: { expense_category_id: @expense_distribution.expense_category_id, percentage: @expense_distribution.percentage, status: @expense_distribution.status, uid: @expense_distribution.uid, user_id: @expense_distribution.user_id } }
    assert_redirected_to expense_distribution_url(@expense_distribution)
  end

  test "should destroy expense_distribution" do
    assert_difference('ExpenseDistribution.count', -1) do
      delete expense_distribution_url(@expense_distribution)
    end

    assert_redirected_to expense_distributions_url
  end
end
