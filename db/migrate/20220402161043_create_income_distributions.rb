class CreateIncomeDistributions < ActiveRecord::Migration[5.2]
  def change
    create_table :income_distributions do |t|
      t.string :uid
      t.float :saving_percentage, default: 0.0
      t.float :expense_percentage, default: 0.0
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
