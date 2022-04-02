require "application_system_test_case"

class IncomeSavingItemsTest < ApplicationSystemTestCase
  setup do
    @income_saving_item = income_saving_items(:one)
  end

  test "visiting the index" do
    visit income_saving_items_url
    assert_selector "h1", text: "Income Saving Items"
  end

  test "creating a Income saving item" do
    visit income_saving_items_url
    click_on "New Income Saving Item"

    fill_in "Amount", with: @income_saving_item.amount
    fill_in "Income saving", with: @income_saving_item.income_saving_id
    fill_in "Percenatge", with: @income_saving_item.percenatge
    fill_in "Status", with: @income_saving_item.status
    fill_in "Uid", with: @income_saving_item.uid
    click_on "Create Income saving item"

    assert_text "Income saving item was successfully created"
    click_on "Back"
  end

  test "updating a Income saving item" do
    visit income_saving_items_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @income_saving_item.amount
    fill_in "Income saving", with: @income_saving_item.income_saving_id
    fill_in "Percenatge", with: @income_saving_item.percenatge
    fill_in "Status", with: @income_saving_item.status
    fill_in "Uid", with: @income_saving_item.uid
    click_on "Update Income saving item"

    assert_text "Income saving item was successfully updated"
    click_on "Back"
  end

  test "destroying a Income saving item" do
    visit income_saving_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Income saving item was successfully destroyed"
  end
end
