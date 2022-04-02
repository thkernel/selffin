require "application_system_test_case"

class ExpenseDistributionsTest < ApplicationSystemTestCase
  setup do
    @expense_distribution = expense_distributions(:one)
  end

  test "visiting the index" do
    visit expense_distributions_url
    assert_selector "h1", text: "Expense Distributions"
  end

  test "creating a Expense distribution" do
    visit expense_distributions_url
    click_on "New Expense Distribution"

    fill_in "Expense category", with: @expense_distribution.expense_category_id
    fill_in "Percentage", with: @expense_distribution.percentage
    fill_in "Status", with: @expense_distribution.status
    fill_in "Uid", with: @expense_distribution.uid
    fill_in "User", with: @expense_distribution.user_id
    click_on "Create Expense distribution"

    assert_text "Expense distribution was successfully created"
    click_on "Back"
  end

  test "updating a Expense distribution" do
    visit expense_distributions_url
    click_on "Edit", match: :first

    fill_in "Expense category", with: @expense_distribution.expense_category_id
    fill_in "Percentage", with: @expense_distribution.percentage
    fill_in "Status", with: @expense_distribution.status
    fill_in "Uid", with: @expense_distribution.uid
    fill_in "User", with: @expense_distribution.user_id
    click_on "Update Expense distribution"

    assert_text "Expense distribution was successfully updated"
    click_on "Back"
  end

  test "destroying a Expense distribution" do
    visit expense_distributions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expense distribution was successfully destroyed"
  end
end
