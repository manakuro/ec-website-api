class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :img
      t.string :title
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
