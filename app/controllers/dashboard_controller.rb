# frozen_string_literal: true

class DashboardController < ApplicationController
  def index
    @coinbase = Coinbase.new
  end
end
