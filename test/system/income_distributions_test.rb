require "application_system_test_case"

class IncomeDistributionsTest < ApplicationSystemTestCase
  setup do
    @income_distribution = income_distributions(:one)
  end

  test "visiting the index" do
    visit income_distributions_url
    assert_selector "h1", text: "Income Distributions"
  end

  test "creating a Income distribution" do
    visit income_distributions_url
    click_on "New Income Distribution"

    fill_in "Expense percentage", with: @income_distribution.expense_percentage
    fill_in "Saving percentage", with: @income_distribution.saving_percentage
    fill_in "Status", with: @income_distribution.status
    fill_in "Uid", with: @income_distribution.uid
    fill_in "User", with: @income_distribution.user_id
    click_on "Create Income distribution"

    assert_text "Income distribution was successfully created"
    click_on "Back"
  end

  test "updating a Income distribution" do
    visit income_distributions_url
    click_on "Edit", match: :first

    fill_in "Expense percentage", with: @income_distribution.expense_percentage
    fill_in "Saving percentage", with: @income_distribution.saving_percentage
    fill_in "Status", with: @income_distribution.status
    fill_in "Uid", with: @income_distribution.uid
    fill_in "User", with: @income_distribution.user_id
    click_on "Update Income distribution"

    assert_text "Income distribution was successfully updated"
    click_on "Back"
  end

  test "destroying a Income distribution" do
    visit income_distributions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Income distribution was successfully destroyed"
  end
end
