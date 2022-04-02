require "application_system_test_case"

class IncomeExpenseItemsTest < ApplicationSystemTestCase
  setup do
    @income_expense_item = income_expense_items(:one)
  end

  test "visiting the index" do
    visit income_expense_items_url
    assert_selector "h1", text: "Income Expense Items"
  end

  test "creating a Income expense item" do
    visit income_expense_items_url
    click_on "New Income Expense Item"

    fill_in "Amount", with: @income_expense_item.amount
    fill_in "Income expense", with: @income_expense_item.income_expense_id
    fill_in "Percenatge", with: @income_expense_item.percenatge
    fill_in "Status", with: @income_expense_item.status
    fill_in "Uid", with: @income_expense_item.uid
    click_on "Create Income expense item"

    assert_text "Income expense item was successfully created"
    click_on "Back"
  end

  test "updating a Income expense item" do
    visit income_expense_items_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @income_expense_item.amount
    fill_in "Income expense", with: @income_expense_item.income_expense_id
    fill_in "Percenatge", with: @income_expense_item.percenatge
    fill_in "Status", with: @income_expense_item.status
    fill_in "Uid", with: @income_expense_item.uid
    click_on "Update Income expense item"

    assert_text "Income expense item was successfully updated"
    click_on "Back"
  end

  test "destroying a Income expense item" do
    visit income_expense_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Income expense item was successfully destroyed"
  end
end
