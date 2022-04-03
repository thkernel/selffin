require "application_system_test_case"

class DebtsTest < ApplicationSystemTestCase
  setup do
    @debt = debts(:one)
  end

  test "visiting the index" do
    visit debts_url
    assert_selector "h1", text: "Debts"
  end

  test "creating a Debt" do
    visit debts_url
    click_on "New Debt"

    fill_in "Amount", with: @debt.amount
    fill_in "Contracted at", with: @debt.contracted_at
    fill_in "Creditor", with: @debt.creditor
    fill_in "Debt type", with: @debt.debt_type_id
    fill_in "Description", with: @debt.description
    fill_in "Reason", with: @debt.reason
    fill_in "Repayment date", with: @debt.repayment_date
    fill_in "Status", with: @debt.status
    fill_in "Uid", with: @debt.uid
    fill_in "User", with: @debt.user_id
    click_on "Create Debt"

    assert_text "Debt was successfully created"
    click_on "Back"
  end

  test "updating a Debt" do
    visit debts_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @debt.amount
    fill_in "Contracted at", with: @debt.contracted_at
    fill_in "Creditor", with: @debt.creditor
    fill_in "Debt type", with: @debt.debt_type_id
    fill_in "Description", with: @debt.description
    fill_in "Reason", with: @debt.reason
    fill_in "Repayment date", with: @debt.repayment_date
    fill_in "Status", with: @debt.status
    fill_in "Uid", with: @debt.uid
    fill_in "User", with: @debt.user_id
    click_on "Update Debt"

    assert_text "Debt was successfully updated"
    click_on "Back"
  end

  test "destroying a Debt" do
    visit debts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Debt was successfully destroyed"
  end
end
