require "application_system_test_case"

class BankMovementsTest < ApplicationSystemTestCase
  setup do
    @bank_movement = bank_movements(:one)
  end

  test "visiting the index" do
    visit bank_movements_url
    assert_selector "h1", text: "Bank Movements"
  end

  test "creating a Bank movement" do
    visit bank_movements_url
    click_on "New Bank Movement"

    fill_in "Amount", with: @bank_movement.amount
    fill_in "Description", with: @bank_movement.description
    fill_in "Designation", with: @bank_movement.designation
    fill_in "Destination", with: @bank_movement.destination_id
    fill_in "Movement type", with: @bank_movement.movement_type
    fill_in "Source", with: @bank_movement.source_id
    fill_in "Status", with: @bank_movement.status
    fill_in "Uid", with: @bank_movement.uid
    fill_in "User", with: @bank_movement.user_id
    click_on "Create Bank movement"

    assert_text "Bank movement was successfully created"
    click_on "Back"
  end

  test "updating a Bank movement" do
    visit bank_movements_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @bank_movement.amount
    fill_in "Description", with: @bank_movement.description
    fill_in "Designation", with: @bank_movement.designation
    fill_in "Destination", with: @bank_movement.destination_id
    fill_in "Movement type", with: @bank_movement.movement_type
    fill_in "Source", with: @bank_movement.source_id
    fill_in "Status", with: @bank_movement.status
    fill_in "Uid", with: @bank_movement.uid
    fill_in "User", with: @bank_movement.user_id
    click_on "Update Bank movement"

    assert_text "Bank movement was successfully updated"
    click_on "Back"
  end

  test "destroying a Bank movement" do
    visit bank_movements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bank movement was successfully destroyed"
  end
end
