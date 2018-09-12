# == Schema Information
#
# Table name: orders
#
#  id                :bigint(8)        not null, primary key
#  done_at           :datetime
#  done_reason       :string
#  executed_value    :decimal(, )
#  fill_fees         :decimal(, )
#  filled_size       :decimal(, )
#  funds             :decimal(, )
#  order_type        :integer
#  post_only         :boolean          default(TRUE), not null
#  price             :decimal(, )
#  settled           :boolean          default(FALSE), not null
#  side              :integer
#  size              :decimal(, )
#  specified_funds   :decimal(, )
#  status            :integer
#  stp               :string
#  time_in_force     :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  coinbase_order_id :string
#  product_id        :bigint(8)
#
# Indexes
#
#  index_orders_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#

FactoryBot.define do
  factory :order do
    price { "9.99" }
    size { "9.99" }
    fill_fees { "9.99" }
    filled_size { "9.99" }
    executed_value { "9.99" }
    funds { "9.99" }
    specified_funds { "9.99" }
    post_only { false }
    settled { false }
    done_at { "2018-09-11 21:02:03" }
    done_reason { "MyString" }
    time_in_force { "MyString" }
    stp { "MyString" }
    coinbase_order_id { "MyString" }
    product { nil }
    order_type { 1 }
    status { 1 }
    side { 1 }
  end
end
