# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    title { 'MyString' }
    description { 'MyString' }
    image { 'none.jpg' }
    price { 1.5 }
    status { 'MyString' }
    developer { nil }
  end
end
