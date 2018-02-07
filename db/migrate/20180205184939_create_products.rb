class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :currency
      t.string :start_zone
      t.string :end_zone
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
