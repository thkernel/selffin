require "application_system_test_case"

class IncomeExpensesTest < ApplicationSystemTestCase
  setup do
    @income_expense = income_expenses(:one)
  end

  test "visiting the index" do
    visit income_expenses_url
    assert_selector "h1", text: "Income Expenses"
  end

  test "creating a Income expense" do
    visit income_expenses_url
    click_on "New Income Expense"

    fill_in "Income", with: @income_expense.income_id
    fill_in "Status", with: @income_expense.status
    fill_in "Uid", with: @income_expense.uid
    fill_in "User", with: @income_expense.user_id
    click_on "Create Income expense"

    assert_text "Income expense was successfully created"
    click_on "Back"
  end

  test "updating a Income expense" do
    visit income_expenses_url
    click_on "Edit", match: :first

    fill_in "Income", with: @income_expense.income_id
    fill_in "Status", with: @income_expense.status
    fill_in "Uid", with: @income_expense.uid
    fill_in "User", with: @income_expense.user_id
    click_on "Update Income expense"

    assert_text "Income expense was successfully updated"
    click_on "Back"
  end

  test "destroying a Income expense" do
    visit income_expenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Income expense was successfully destroyed"
  end
end
