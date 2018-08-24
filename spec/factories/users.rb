# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'tester@example.com' }
    first_name { 'John' }
    last_name { 'Doe' }
    password { '123456789' }
  end
end
