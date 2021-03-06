# == Schema Information
#
# Table name: products
#
#  id          :bigint(8)        not null, primary key
#  description :string
#  symbol      :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :product do
    title { 'MyString' }
    symbol { 'MyString' }
    description { 'MyString' }

    trait :with_orders do
      after(:create) { |product| create_list(:order, 5, product: product) }
    end
  end
end
