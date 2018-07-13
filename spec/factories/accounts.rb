# == Schema Information
#
# Table name: accounts
#
#  id                  :bigint(8)        not null, primary key
#  available           :decimal(, )
#  balance             :decimal(, )
#  description         :text
#  hold                :decimal(, )
#  title               :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  coinbase_account_id :string
#  currency_id         :bigint(8)
#
# Indexes
#
#  index_accounts_on_currency_id  (currency_id)
#
# Foreign Keys
#
#  fk_rails_...  (currency_id => currencies.id)
#

FactoryBot.define do
  factory :account do
    title "MyString"
    balance "9.99"
    available "9.99"
    hold "9.99"
    coinbase_account_id "MyString"
    description "MyText"
  end
end
