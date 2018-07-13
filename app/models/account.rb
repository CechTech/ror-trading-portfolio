# frozen_string_literal: true

class Account < ApplicationRecord
  belongs_to :user
  belongs_to :currency

  validates :title, presence: true
  validates :coinbase_account_id, presence: true
end
