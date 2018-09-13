# == Schema Information
#
# Table name: account_records
#
#  id                :bigint(8)        not null, primary key
#  amount            :decimal(, )
#  balance           :decimal(, )
#  record_type       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  account_id        :bigint(8)
#  coinbase_id       :string
#  coinbase_trade_id :string
#
# Indexes
#
#  index_account_records_on_account_id  (account_id)
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#

FactoryBot.define do
  factory :account_record do
    record_type { '1' }
    amount { '9.99' }
    balance { '9.99' }
    coinbase_trade_id { 'MyString' }
    coinbase_id { 'MyString' }
    account
  end
end
