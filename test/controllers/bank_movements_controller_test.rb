require 'test_helper'

class BankMovementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bank_movement = bank_movements(:one)
  end

  test "should get index" do
    get bank_movements_url
    assert_response :success
  end

  test "should get new" do
    get new_bank_movement_url
    assert_response :success
  end

  test "should create bank_movement" do
    assert_difference('BankMovement.count') do
      post bank_movements_url, params: { bank_movement: { amount: @bank_movement.amount, description: @bank_movement.description, designation: @bank_movement.designation, destination_id: @bank_movement.destination_id, movement_type: @bank_movement.movement_type, source_id: @bank_movement.source_id, status: @bank_movement.status, uid: @bank_movement.uid, user_id: @bank_movement.user_id } }
    end

    assert_redirected_to bank_movement_url(BankMovement.last)
  end

  test "should show bank_movement" do
    get bank_movement_url(@bank_movement)
    assert_response :success
  end

  test "should get edit" do
    get edit_bank_movement_url(@bank_movement)
    assert_response :success
  end

  test "should update bank_movement" do
    patch bank_movement_url(@bank_movement), params: { bank_movement: { amount: @bank_movement.amount, description: @bank_movement.description, designation: @bank_movement.designation, destination_id: @bank_movement.destination_id, movement_type: @bank_movement.movement_type, source_id: @bank_movement.source_id, status: @bank_movement.status, uid: @bank_movement.uid, user_id: @bank_movement.user_id } }
    assert_redirected_to bank_movement_url(@bank_movement)
  end

  test "should destroy bank_movement" do
    assert_difference('BankMovement.count', -1) do
      delete bank_movement_url(@bank_movement)
    end

    assert_redirected_to bank_movements_url
  end
end
