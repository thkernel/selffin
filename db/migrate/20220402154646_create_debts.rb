class CreateDebts < ActiveRecord::Migration[5.2]
  def change
    create_table :debts do |t|
      t.string :uid
      t.references :debt_type, foreign_key: true
      t.date :contracted_at
      t.date :repayment_date
      t.string :designation
      t.boolean :is_creditor
      t.references :creditor, index: true
      
      t.float :amount, default: 0.0
      t.float :interest_rate, default: 0.0
      t.float :interest_amount, default: 0.0
      t.float :total, default: 0.0
      
      t.string :status
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
