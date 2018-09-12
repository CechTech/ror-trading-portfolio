class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :price
      t.decimal :size
      t.decimal :fill_fees
      t.decimal :filled_size
      t.decimal :executed_value
      t.decimal :funds
      t.decimal :specified_funds
      t.boolean :post_only, null: false, default: true
      t.boolean :settled, null: false, default: false
      t.datetime :done_at
      t.string :done_reason
      t.string :time_in_force
      t.string :stp
      t.string :coinbase_order_id
      t.integer :order_type
      t.integer :status
      t.integer :side

      t.timestamps
    end
  end
end
