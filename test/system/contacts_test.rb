require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "creating a Contact" do
    visit contacts_url
    click_on "New Contact"

    fill_in "About", with: @contact.about
    fill_in "Address", with: @contact.address
    fill_in "City", with: @contact.city
    fill_in "Civility", with: @contact.civility
    fill_in "Contact type", with: @contact.contact_type_id
    fill_in "Contry", with: @contact.contry
    fill_in "Email", with: @contact.email
    fill_in "First name", with: @contact.first_name
    fill_in "Last name", with: @contact.last_name
    fill_in "Phone number 1", with: @contact.phone_number_1
    fill_in "Phone number 2", with: @contact.phone_number_2
    fill_in "Status", with: @contact.status
    fill_in "Uid", with: @contact.uid
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "updating a Contact" do
    visit contacts_url
    click_on "Edit", match: :first

    fill_in "About", with: @contact.about
    fill_in "Address", with: @contact.address
    fill_in "City", with: @contact.city
    fill_in "Civility", with: @contact.civility
    fill_in "Contact type", with: @contact.contact_type_id
    fill_in "Contry", with: @contact.contry
    fill_in "Email", with: @contact.email
    fill_in "First name", with: @contact.first_name
    fill_in "Last name", with: @contact.last_name
    fill_in "Phone number 1", with: @contact.phone_number_1
    fill_in "Phone number 2", with: @contact.phone_number_2
    fill_in "Status", with: @contact.status
    fill_in "Uid", with: @contact.uid
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact" do
    visit contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact was successfully destroyed"
  end
end
