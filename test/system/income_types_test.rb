require "application_system_test_case"

class IncomeTypesTest < ApplicationSystemTestCase
  setup do
    @income_type = income_types(:one)
  end

  test "visiting the index" do
    visit income_types_url
    assert_selector "h1", text: "Income Types"
  end

  test "creating a Income type" do
    visit income_types_url
    click_on "New Income Type"

    fill_in "Description", with: @income_type.description
    fill_in "Name", with: @income_type.name
    fill_in "Status", with: @income_type.status
    fill_in "Uid", with: @income_type.uid
    fill_in "User", with: @income_type.user_id
    click_on "Create Income type"

    assert_text "Income type was successfully created"
    click_on "Back"
  end

  test "updating a Income type" do
    visit income_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @income_type.description
    fill_in "Name", with: @income_type.name
    fill_in "Status", with: @income_type.status
    fill_in "Uid", with: @income_type.uid
    fill_in "User", with: @income_type.user_id
    click_on "Update Income type"

    assert_text "Income type was successfully updated"
    click_on "Back"
  end

  test "destroying a Income type" do
    visit income_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Income type was successfully destroyed"
  end
end
