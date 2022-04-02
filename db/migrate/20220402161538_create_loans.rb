class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.string :uid
      t.string :designation
      t.date :loan_date
      t.string :source
      t.text :description
      t.float :amount, default: 0.0
      t.date :repayment_date
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
