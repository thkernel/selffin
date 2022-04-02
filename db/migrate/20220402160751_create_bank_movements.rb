class CreateBankMovements < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_movements do |t|
      t.string :uid
      t.string :movement_type
      t.string :designation
      t.text :description
      t.references :source, index: true
      t.references :destination, index: true
      t.float :amount, default: 0.0
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
