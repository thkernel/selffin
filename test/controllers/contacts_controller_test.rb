require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { about: @contact.about, address: @contact.address, city: @contact.city, civility: @contact.civility, contact_type_id: @contact.contact_type_id, contry: @contact.contry, email: @contact.email, first_name: @contact.first_name, last_name: @contact.last_name, phone_number_1: @contact.phone_number_1, phone_number_2: @contact.phone_number_2, status: @contact.status, uid: @contact.uid } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { about: @contact.about, address: @contact.address, city: @contact.city, civility: @contact.civility, contact_type_id: @contact.contact_type_id, contry: @contact.contry, email: @contact.email, first_name: @contact.first_name, last_name: @contact.last_name, phone_number_1: @contact.phone_number_1, phone_number_2: @contact.phone_number_2, status: @contact.status, uid: @contact.uid } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end
end
