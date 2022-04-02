require "application_system_test_case"

class ExpensesTest < ApplicationSystemTestCase
  setup do
    @expense = expenses(:one)
  end

  test "visiting the index" do
    visit expenses_url
    assert_selector "h1", text: "Expenses"
  end

  test "creating a Expense" do
    visit expenses_url
    click_on "New Expense"

    fill_in "Amount", with: @expense.amount
    fill_in "Bank", with: @expense.bank_id
    fill_in "Bank source", with: @expense.bank_source
    fill_in "Description", with: @expense.description
    fill_in "Document reference", with: @expense.document_reference
    fill_in "Expense category", with: @expense.expense_category_id
    fill_in "Reason", with: @expense.reason
    fill_in "Recipient", with: @expense.recipient
    fill_in "Status", with: @expense.status
    fill_in "Uid", with: @expense.uid
    fill_in "User", with: @expense.user_id
    fill_in "Wallet", with: @expense.wallet_id
    check "Wallet source" if @expense.wallet_source
    click_on "Create Expense"

    assert_text "Expense was successfully created"
    click_on "Back"
  end

  test "updating a Expense" do
    visit expenses_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @expense.amount
    fill_in "Bank", with: @expense.bank_id
    fill_in "Bank source", with: @expense.bank_source
    fill_in "Description", with: @expense.description
    fill_in "Document reference", with: @expense.document_reference
    fill_in "Expense category", with: @expense.expense_category_id
    fill_in "Reason", with: @expense.reason
    fill_in "Recipient", with: @expense.recipient
    fill_in "Status", with: @expense.status
    fill_in "Uid", with: @expense.uid
    fill_in "User", with: @expense.user_id
    fill_in "Wallet", with: @expense.wallet_id
    check "Wallet source" if @expense.wallet_source
    click_on "Update Expense"

    assert_text "Expense was successfully updated"
    click_on "Back"
  end

  test "destroying a Expense" do
    visit expenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expense was successfully destroyed"
  end
end
