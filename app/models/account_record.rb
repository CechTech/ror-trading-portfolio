# frozen_string_literal: true

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

class AccountRecord < ApplicationRecord
  extend Enumerize

  belongs_to :account

  enumerize :record_type, in: {
    transfer: 1,
    match: 2,
    fee: 3,
    rebate: 4
  }

  validates :record_type, presence: true
  validates :coinbase_id, presence: true
  validates :coinbase_trade_id, presence: true
end
