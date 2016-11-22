# mikemunevar:~/workspace (master) $ rails generate migration create_orders_and_products_join_table
# Running via Spring preloader in process 5587
#       invoke  active_record
#       create    db/migrate/20161119234808_create_orders_and_products_join_table.rb
# mikemunevar:~/workspace (master) $ 

class CreateOrdersAndProductsJoinTable < ActiveRecord::Migration
  def change
    create_table :orders_products do |t|
      t.integer   :order_id
      t.integer   :product_id
    end
  end
end
