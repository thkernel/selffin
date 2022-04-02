require "application_system_test_case"

class IncomeSavingsTest < ApplicationSystemTestCase
  setup do
    @income_saving = income_savings(:one)
  end

  test "visiting the index" do
    visit income_savings_url
    assert_selector "h1", text: "Income Savings"
  end

  test "creating a Income saving" do
    visit income_savings_url
    click_on "New Income Saving"

    fill_in "Income", with: @income_saving.income_id
    fill_in "Status", with: @income_saving.status
    fill_in "Uid", with: @income_saving.uid
    fill_in "User", with: @income_saving.user_id
    click_on "Create Income saving"

    assert_text "Income saving was successfully created"
    click_on "Back"
  end

  test "updating a Income saving" do
    visit income_savings_url
    click_on "Edit", match: :first

    fill_in "Income", with: @income_saving.income_id
    fill_in "Status", with: @income_saving.status
    fill_in "Uid", with: @income_saving.uid
    fill_in "User", with: @income_saving.user_id
    click_on "Update Income saving"

    assert_text "Income saving was successfully updated"
    click_on "Back"
  end

  test "destroying a Income saving" do
    visit income_savings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Income saving was successfully destroyed"
  end
end
