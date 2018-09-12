class CreateAccountRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :account_records do |t|
      t.decimal :amount
      t.decimal :balance
      t.string :coinbase_trade_id
      t.string :coinbase_id

      t.timestamps
    end
  end
end
