class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :price
      t.string :name
      t.string :permalink

      t.timestamps null: false
    end
  end
end
