require "application_system_test_case"

class WalletMovementsTest < ApplicationSystemTestCase
  setup do
    @wallet_movement = wallet_movements(:one)
  end

  test "visiting the index" do
    visit wallet_movements_url
    assert_selector "h1", text: "Wallet Movements"
  end

  test "creating a Wallet movement" do
    visit wallet_movements_url
    click_on "New Wallet Movement"

    fill_in "Amount", with: @wallet_movement.amount
    fill_in "Description", with: @wallet_movement.description
    fill_in "Designation", with: @wallet_movement.designation
    fill_in "Destination", with: @wallet_movement.destination_id
    fill_in "Movement type", with: @wallet_movement.movement_type
    fill_in "Source", with: @wallet_movement.source_id
    fill_in "Status", with: @wallet_movement.status
    fill_in "Uid", with: @wallet_movement.uid
    fill_in "User", with: @wallet_movement.user_id
    click_on "Create Wallet movement"

    assert_text "Wallet movement was successfully created"
    click_on "Back"
  end

  test "updating a Wallet movement" do
    visit wallet_movements_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @wallet_movement.amount
    fill_in "Description", with: @wallet_movement.description
    fill_in "Designation", with: @wallet_movement.designation
    fill_in "Destination", with: @wallet_movement.destination_id
    fill_in "Movement type", with: @wallet_movement.movement_type
    fill_in "Source", with: @wallet_movement.source_id
    fill_in "Status", with: @wallet_movement.status
    fill_in "Uid", with: @wallet_movement.uid
    fill_in "User", with: @wallet_movement.user_id
    click_on "Update Wallet movement"

    assert_text "Wallet movement was successfully updated"
    click_on "Back"
  end

  test "destroying a Wallet movement" do
    visit wallet_movements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wallet movement was successfully destroyed"
  end
end
