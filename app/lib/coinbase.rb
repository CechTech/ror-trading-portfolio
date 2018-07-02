# frozen_string_literal: true

class Coinbase
  include HTTParty
  format :json
  base_uri 'https://api.pro.coinbase.com'

  def initialize
    @options = {
      headers: {
        'CB-ACCESS-KEY' => ENV['CB_ACCESS_KEY'],
        'CB-ACCESS-PASSPHRASE' => ENV['CB_ACCESS_PASSPHRASE'],
        'Content-Type' => 'application/json',
        'User-Agent' => 'Ruby on Rails'
      }
    }
  end

  def accounts(id = nil, subpath = nil)
    timestamp = time.to_s
    request_path = '/accounts'
    request_path += "/#{id}" if id.present?
    request_path += "/#{subpath}"

    @options[:headers].merge!(
      'CB-ACCESS-SIGN' => signature(request_path, '', timestamp),
      'CB-ACCESS-TIMESTAMP' => timestamp
    )
    self.class.get(request_path, @options).parsed_response
  end

  def fills(id = nil)
    timestamp = time.to_s
    request_path = '/fills'
    request_path += "/#{id}" if id.present?

    @options[:headers].merge!(
      'CB-ACCESS-SIGN' => signature(request_path, '', timestamp),
      'CB-ACCESS-TIMESTAMP' => timestamp
    )
    self.class.get(request_path, @options).parsed_response
  end

  def orders(id = nil)
    timestamp = time.to_s
    request_path = '/orders'
    request_path += "/#{id}" if id.present?

    @options[:headers].merge!(
      'CB-ACCESS-SIGN' => signature(request_path, '', timestamp),
      'CB-ACCESS-TIMESTAMP' => timestamp
    )
    self.class.get(request_path, @options).parsed_response
  end

  def time
    self.class.get('/time', @options).parsed_response['epoch']
  end
end

private

def signature(request_path = '', body = '', timestamp = nil, method = 'GET')
  body = body.to_json if body.is_a?(Hash)
  timestamp ||= Time.now.to_i

  what = "#{timestamp}#{method}#{request_path}#{body}"

  secret = Base64.decode64(ENV['CB_ACCESS_SECRET'])
  hash = OpenSSL::HMAC.digest('sha256', secret, what)
  Base64.strict_encode64(hash)
end
