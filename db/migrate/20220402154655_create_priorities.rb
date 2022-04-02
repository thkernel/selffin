class CreatePriorities < ActiveRecord::Migration[5.2]
  def change
    create_table :priorities do |t|
      t.string :uid
      t.string :name
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
