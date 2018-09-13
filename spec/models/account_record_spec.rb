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

require 'rails_helper'

RSpec.describe AccountRecord, type: :model do
  let(:account) { FactoryBot.create(:account) }

  it 'has a valid factory' do
    expect(FactoryBot.build(:account_record)).to be_valid
  end

  it { is_expected.to belong_to :account }

  it { is_expected.to validate_presence_of :record_type }
  it { is_expected.to validate_presence_of :coinbase_id }
  it { is_expected.to validate_presence_of :coinbase_trade_id }
  it { is_expected.to enumerize(:record_type) }

  it 'is valid with record_type, coinbase_id and coinbase_trade_id' do
    account_records = AccountRecord.new(valid_params)
    expect(account_records).to be_valid
  end

  private

  def valid_params
    {
      account: account,
      record_type: 1,
      coinbase_id: 'coinbase_id',
      coinbase_trade_id: 'coinbase_trade_id'
    }
  end
end
