class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|

      t.string :name, null: false, limit: 50

      t.timestamp

    end
  end
end
