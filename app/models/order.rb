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

class Order < ApplicationRecord
  belongs_to :product
end
