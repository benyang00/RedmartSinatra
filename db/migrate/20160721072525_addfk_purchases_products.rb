class AddfkPurchasesProducts < ActiveRecord::Migration
  def change

    add_foreign_key :purchases, :products

  end
end
