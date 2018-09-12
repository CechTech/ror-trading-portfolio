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

require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:product)).to be_valid
  end

  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :symbol }

  it 'is valid with a title, and symbol' do
    product = Product.new(
      title: 'BTC/USD',
      symbol: 'BTC-USD'
    )
    expect(product).to be_valid
  end

  it 'can have many orders' do
    product = FactoryBot.create(:product, :with_orders)
    expect(product.orders.length).to eq 5
  end
end
