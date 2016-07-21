class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :name, null: false, limit: 50
      t.string :email, null: false, limit: 50
      t.string :address
      t.string :password, null: false, limit: 50
      t.string :cc_number, null: false, limit: 50

      t.timestamps

    end
  end
end
