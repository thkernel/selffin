require "application_system_test_case"

class ContactTypesTest < ApplicationSystemTestCase
  setup do
    @contact_type = contact_types(:one)
  end

  test "visiting the index" do
    visit contact_types_url
    assert_selector "h1", text: "Contact Types"
  end

  test "creating a Contact type" do
    visit contact_types_url
    click_on "New Contact Type"

    fill_in "Description", with: @contact_type.description
    fill_in "Name", with: @contact_type.name
    fill_in "Status", with: @contact_type.status
    fill_in "Uid", with: @contact_type.uid
    fill_in "User", with: @contact_type.user_id
    click_on "Create Contact type"

    assert_text "Contact type was successfully created"
    click_on "Back"
  end

  test "updating a Contact type" do
    visit contact_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @contact_type.description
    fill_in "Name", with: @contact_type.name
    fill_in "Status", with: @contact_type.status
    fill_in "Uid", with: @contact_type.uid
    fill_in "User", with: @contact_type.user_id
    click_on "Update Contact type"

    assert_text "Contact type was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact type" do
    visit contact_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact type was successfully destroyed"
  end
end
