class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :uid
      t.references :expense_category, foreign_key: true
      t.string :designation
      t.boolean :is_recipient
      t.references :recipient, index: true
      t.string :document_reference
      t.float :amount, default: 0.0
      t.text :description
      #t.boolean :wallet_source
      #t.references :wallet, foreign_key: true
      #t.boolean :bank_source
      #t.references :bank, foreign_key: true
      t.references :user, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
