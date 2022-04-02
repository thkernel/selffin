require 'test_helper'

class WalletMovementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wallet_movement = wallet_movements(:one)
  end

  test "should get index" do
    get wallet_movements_url
    assert_response :success
  end

  test "should get new" do
    get new_wallet_movement_url
    assert_response :success
  end

  test "should create wallet_movement" do
    assert_difference('WalletMovement.count') do
      post wallet_movements_url, params: { wallet_movement: { amount: @wallet_movement.amount, description: @wallet_movement.description, designation: @wallet_movement.designation, destination_id: @wallet_movement.destination_id, movement_type: @wallet_movement.movement_type, source_id: @wallet_movement.source_id, status: @wallet_movement.status, uid: @wallet_movement.uid, user_id: @wallet_movement.user_id } }
    end

    assert_redirected_to wallet_movement_url(WalletMovement.last)
  end

  test "should show wallet_movement" do
    get wallet_movement_url(@wallet_movement)
    assert_response :success
  end

  test "should get edit" do
    get edit_wallet_movement_url(@wallet_movement)
    assert_response :success
  end

  test "should update wallet_movement" do
    patch wallet_movement_url(@wallet_movement), params: { wallet_movement: { amount: @wallet_movement.amount, description: @wallet_movement.description, designation: @wallet_movement.designation, destination_id: @wallet_movement.destination_id, movement_type: @wallet_movement.movement_type, source_id: @wallet_movement.source_id, status: @wallet_movement.status, uid: @wallet_movement.uid, user_id: @wallet_movement.user_id } }
    assert_redirected_to wallet_movement_url(@wallet_movement)
  end

  test "should destroy wallet_movement" do
    assert_difference('WalletMovement.count', -1) do
      delete wallet_movement_url(@wallet_movement)
    end

    assert_redirected_to wallet_movements_url
  end
end
