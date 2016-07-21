class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|

      t.integer :product_id, null: false
      t.integer :user_id, null: false
      t.boolean :status, null: false

      t.timestamp

    end
  end
end
