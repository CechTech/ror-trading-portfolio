# frozen_string_literal: true

# == Schema Information
#
# Table name: currencies
#
#  id          :bigint(8)        not null, primary key
#  description :text
#  symbol      :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


class Currency < ApplicationRecord
  validates :title, presence: true
  validates :symbol, presence: true

  auto_strip_attributes :description, squish: true
end
