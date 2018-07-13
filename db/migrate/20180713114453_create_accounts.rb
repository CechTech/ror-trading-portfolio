class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :title
      t.decimal :balance
      t.decimal :available
      t.decimal :hold
      t.string :coinbase_account_id
      t.text :description

      t.timestamps
    end
  end
end
