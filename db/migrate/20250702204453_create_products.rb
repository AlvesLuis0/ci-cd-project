class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :reference, null: false, limit: 20, index: { unique: true }
      t.string :name, null: false, limit: 60
      t.text :description
      t.decimal :price, precision: 14, scale: 2

      t.timestamps
    end
  end
end
