require "application_system_test_case"

class LendsTest < ApplicationSystemTestCase
  setup do
    @lend = lends(:one)
  end

  test "visiting the index" do
    visit lends_url
    assert_selector "h1", text: "Lends"
  end

  test "creating a Lend" do
    visit lends_url
    click_on "New Lend"

    fill_in "Amount", with: @lend.amount
    fill_in "Description", with: @lend.description
    fill_in "Designation", with: @lend.designation
    fill_in "Lend date", with: @lend.lend_date
    fill_in "Recipient", with: @lend.recipient
    fill_in "Repayment date", with: @lend.repayment_date
    fill_in "Status", with: @lend.status
    fill_in "Uid", with: @lend.uid
    fill_in "User", with: @lend.user_id
    click_on "Create Lend"

    assert_text "Lend was successfully created"
    click_on "Back"
  end

  test "updating a Lend" do
    visit lends_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @lend.amount
    fill_in "Description", with: @lend.description
    fill_in "Designation", with: @lend.designation
    fill_in "Lend date", with: @lend.lend_date
    fill_in "Recipient", with: @lend.recipient
    fill_in "Repayment date", with: @lend.repayment_date
    fill_in "Status", with: @lend.status
    fill_in "Uid", with: @lend.uid
    fill_in "User", with: @lend.user_id
    click_on "Update Lend"

    assert_text "Lend was successfully updated"
    click_on "Back"
  end

  test "destroying a Lend" do
    visit lends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lend was successfully destroyed"
  end
end
