class CreateLends < ActiveRecord::Migration[5.2]
  def change
    create_table :lends do |t|
      t.string :uid
      t.string :designation
      t.date :lend_date
      t.string :recipient
      t.text :description
      t.float :amount, default: 0.0
      t.date :repayment_date
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
