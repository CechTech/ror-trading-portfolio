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

FactoryBot.define do
  factory :currency do
    title { "MyString" }
    symbol { "MyString" }
    description { "MyText" }
  end
end
