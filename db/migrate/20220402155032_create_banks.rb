class CreateBanks < ActiveRecord::Migration[5.2]
  def change
    create_table :banks do |t|
      t.string :uid
      t.string :name
      t.string :short_code
      t.string :account_type
      t.string :account_number
      t.float :balance, default: 0.0
      t.text :description
      t.boolean :withdrawal
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
