class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.string :uid
      t.date :income_date
      t.references :income_type, foreign_key: true
      t.string :designation
      t.text :description
      t.float :amount, default: 0.0
      #t.boolean :wallet_destionation
      #t.references :wallet, foreign_key: true
      #t.boolean :bank_destination
      #t.references :bank, foreign_key: true
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
