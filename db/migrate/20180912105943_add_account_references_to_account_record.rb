class AddAccountReferencesToAccountRecord < ActiveRecord::Migration[5.2]
  def change
    add_reference :account_records, :account, foreign_key: true
  end
end
