class CreateIncomeExpenseItems < ActiveRecord::Migration[5.2]
  def change
    create_table :income_expense_items do |t|
      t.string :uid
      t.references :income_expense, foreign_key: true
      t.references :expense_category, foreign_key: true
      t.float :percentage, default: 0.0
      t.float :amount, default: 0.0
      t.string :status

      t.timestamps
    end
  end
end
