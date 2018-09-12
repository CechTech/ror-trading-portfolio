# frozen_string_literal: true

class FetchOrders
  @coinbase = Coinbase.new

  def self.fetch
    orders = @coinbase.orders

    orders.each do |order|
      # ApplicationRecord.transaction do
      #   product = Product
      #               .create_with(title: order['product_id'])
      #               .find_or_create_by!(symbol: order['currency'])
      #
      #   params = {
      #     user: user,
      #     product: product,
      #     title: order['currency'],
      #     balance: order['balance'],
      #     available: order['available'],
      #     hold: order['hold'],
      #     coinbase_order_id: order['id']
      #   }
      #   Order.create!(params)
      # end
    end

    Order.all
  end
end
