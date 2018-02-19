class CreateGrandmas < ActiveRecord::Migration[5.1]
  def change
    create_table :grandmas do |t|
      t.boolean :baby_sitting
      t.boolean :cooking
      t.boolean :knitting
      t.boolean :pet_sitting
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
