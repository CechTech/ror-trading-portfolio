class AddRecordTypeToAccountRecord < ActiveRecord::Migration[5.2]
  def change
    add_column :account_records, :record_type, :integer
  end
end
