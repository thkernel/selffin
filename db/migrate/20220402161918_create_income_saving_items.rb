class CreateIncomeSavingItems < ActiveRecord::Migration[5.2]
  def change
    create_table :income_saving_items do |t|
      t.string :uid
      t.references :income_saving, foreign_key: true
      t.float :percentage, default: 0.0
      t.float :amount, default: 0.0
      t.string :status

      t.timestamps
    end
  end
end
