require 'test_helper'

class LendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lend = lends(:one)
  end

  test "should get index" do
    get lends_url
    assert_response :success
  end

  test "should get new" do
    get new_lend_url
    assert_response :success
  end

  test "should create lend" do
    assert_difference('Lend.count') do
      post lends_url, params: { lend: { amount: @lend.amount, description: @lend.description, designation: @lend.designation, lend_date: @lend.lend_date, recipient: @lend.recipient, repayment_date: @lend.repayment_date, status: @lend.status, uid: @lend.uid, user_id: @lend.user_id } }
    end

    assert_redirected_to lend_url(Lend.last)
  end

  test "should show lend" do
    get lend_url(@lend)
    assert_response :success
  end

  test "should get edit" do
    get edit_lend_url(@lend)
    assert_response :success
  end

  test "should update lend" do
    patch lend_url(@lend), params: { lend: { amount: @lend.amount, description: @lend.description, designation: @lend.designation, lend_date: @lend.lend_date, recipient: @lend.recipient, repayment_date: @lend.repayment_date, status: @lend.status, uid: @lend.uid, user_id: @lend.user_id } }
    assert_redirected_to lend_url(@lend)
  end

  test "should destroy lend" do
    assert_difference('Lend.count', -1) do
      delete lend_url(@lend)
    end

    assert_redirected_to lends_url
  end
end
