class AddfkPurchasesUser < ActiveRecord::Migration
  def change

    add_foreign_key :purchases, :users

    # add_foreign_key :purchases, :products

  end
end
