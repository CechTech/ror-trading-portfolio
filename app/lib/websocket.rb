# frozen_string_literal: true

class Websocket
  ws = WebSocket::Client::Simple.connect 'wss://ws-feed.pro.coinbase.com'

  ws.on :message do |msg|
    ap msg.data
  end

  ws.on :open do
    request = {
      type: 'subscribe',
      product_ids: [
        'ETH-USD',
        'ETH-EUR'
      ],
      channels: [
        'level2',
        'heartbeat',
        {
          name: 'ticker',
          product_ids: [
            'ETH-BTC',
            'ETH-USD'
          ]
        }
      ]
    }
    ws.send request.to_json
  end

  ws.on :close do |e|
    p e
    exit 1
  end

  ws.on :error do |e|
    p e
  end

  loop do
    ws.send STDIN.gets.strip
  end
end