class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.references :farmer, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
