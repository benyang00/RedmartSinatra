class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

      t.string :name, null: false, limit: 50
      t.string :brand_id, null: false
      t.string :category_id, null: false
      t.decimal :price, null: false, precision: 15, scale: 2

      t.timestamp

    end

  end
end
