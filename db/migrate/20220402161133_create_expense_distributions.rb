class CreateExpenseDistributions < ActiveRecord::Migration[5.2]
  def change
    create_table :expense_distributions do |t|
      t.string :uid
      t.references :expense_category, foreign_key: true
      t.float :percentage, default: 0.0
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
