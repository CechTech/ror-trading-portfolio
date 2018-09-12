# frozen_string_literal: true

# == Schema Information
#
# Table name: currencies
#
#  id          :bigint(8)        not null, primary key
#  description :text
#  symbol      :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Currency, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:currency)).to be_valid
  end

  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :symbol }

  it 'is valid with a title, and symbol' do
    currency = Currency.new(
      title: 'BTC',
      symbol: 'BTC'
    )
    expect(currency).to be_valid
  end

  it 'can have many accounts' do
    currency = FactoryBot.create(:currency, :with_accounts)
    expect(currency.accounts.length).to eq 5
  end
end
