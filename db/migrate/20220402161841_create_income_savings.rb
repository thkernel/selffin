class CreateIncomeSavings < ActiveRecord::Migration[5.2]
  def change
    create_table :income_savings do |t|
      t.string :uid
      t.references :income, foreign_key: true
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
