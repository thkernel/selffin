class CreateSavings < ActiveRecord::Migration[5.2]
  def change
    create_table :savings do |t|
      t.string :uid
      t.datetime :saving_date
      t.string :designation
      t.references :bank, foreign_key: true
      t.text :description
      t.float :amount, default: 0.0
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
