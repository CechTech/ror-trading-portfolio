# frozen_string_literal: true

class FetchAccounts
  @coinbase = Coinbase.new

  def self.fetch
    accounts = @coinbase.accounts
    accounts.each do |account|
      ApplicationRecord.transaction do
        currency = Currency
                     .create_with(title: account['currency'])
                     .find_or_create_by!(symbol: account['currency'])

        params = {
          currency: currency,
          title: account['currency'],
          balance: account['balance'],
          available: account['available'],
          hold: account['hold'],
          coinbase_account_id: account['id']
        }
        Account.create!(params)
      end
    end

    Account.all
  end
end