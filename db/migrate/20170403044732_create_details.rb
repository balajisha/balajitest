class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.integer :salary
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
