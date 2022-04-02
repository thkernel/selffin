require 'test_helper'

class IncomeDistributionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @income_distribution = income_distributions(:one)
  end

  test "should get index" do
    get income_distributions_url
    assert_response :success
  end

  test "should get new" do
    get new_income_distribution_url
    assert_response :success
  end

  test "should create income_distribution" do
    assert_difference('IncomeDistribution.count') do
      post income_distributions_url, params: { income_distribution: { expense_percentage: @income_distribution.expense_percentage, saving_percentage: @income_distribution.saving_percentage, status: @income_distribution.status, uid: @income_distribution.uid, user_id: @income_distribution.user_id } }
    end

    assert_redirected_to income_distribution_url(IncomeDistribution.last)
  end

  test "should show income_distribution" do
    get income_distribution_url(@income_distribution)
    assert_response :success
  end

  test "should get edit" do
    get edit_income_distribution_url(@income_distribution)
    assert_response :success
  end

  test "should update income_distribution" do
    patch income_distribution_url(@income_distribution), params: { income_distribution: { expense_percentage: @income_distribution.expense_percentage, saving_percentage: @income_distribution.saving_percentage, status: @income_distribution.status, uid: @income_distribution.uid, user_id: @income_distribution.user_id } }
    assert_redirected_to income_distribution_url(@income_distribution)
  end

  test "should destroy income_distribution" do
    assert_difference('IncomeDistribution.count', -1) do
      delete income_distribution_url(@income_distribution)
    end

    assert_redirected_to income_distributions_url
  end
end
