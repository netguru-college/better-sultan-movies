# frozen_string_literal: true

FactoryBot.define do
  factory :shelf do
    name { 'Some new shelf' }
    user
  end
end
