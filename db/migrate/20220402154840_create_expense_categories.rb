class CreateExpenseCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :expense_categories do |t|
      t.string :uid
      t.string :name
      t.references :priority, foreign_key: true
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
