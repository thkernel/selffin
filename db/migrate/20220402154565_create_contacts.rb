class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :uid
      t.references :contact_type, foreign_key: true
      t.string :company_name
      t.string :first_name
      t.string :last_name
      t.string :civility
      t.string :address
      t.string :phone_number_1
      t.string :phone_number_2
      t.string :city
      t.string :contry
      t.string :email
      t.string :about
      t.string :status

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
