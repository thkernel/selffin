require "application_system_test_case"

class DebtTypesTest < ApplicationSystemTestCase
  setup do
    @debt_type = debt_types(:one)
  end

  test "visiting the index" do
    visit debt_types_url
    assert_selector "h1", text: "Debt Types"
  end

  test "creating a Debt type" do
    visit debt_types_url
    click_on "New Debt Type"

    fill_in "Description", with: @debt_type.description
    fill_in "Name", with: @debt_type.name
    fill_in "Status", with: @debt_type.status
    fill_in "Uid", with: @debt_type.uid
    fill_in "User", with: @debt_type.user_id
    click_on "Create Debt type"

    assert_text "Debt type was successfully created"
    click_on "Back"
  end

  test "updating a Debt type" do
    visit debt_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @debt_type.description
    fill_in "Name", with: @debt_type.name
    fill_in "Status", with: @debt_type.status
    fill_in "Uid", with: @debt_type.uid
    fill_in "User", with: @debt_type.user_id
    click_on "Update Debt type"

    assert_text "Debt type was successfully updated"
    click_on "Back"
  end

  test "destroying a Debt type" do
    visit debt_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Debt type was successfully destroyed"
  end
end
