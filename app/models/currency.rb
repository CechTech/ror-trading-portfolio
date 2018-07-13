# frozen_string_literal: true

class Currency < ApplicationRecord
  validates :title, presence: true
  validates :symbol, presence: true

  auto_strip_attributes :description, squish: true
end
