FactoryBot.define do
  factory :product do
    dev_id      { rand(1..5) }
    title       { Faker::Lorem.word.camelcase }
    bytitle     { title.downcase }
    img         { Faker::Lorem.sentence(word_count: 10).downcase }
    keywords    { title.downcase }
    description { Faker::Lorem.sentence(word_count: 10) }
    price       { rand(10..500) }
    old_price   { rand(10..500) }
    status      { 1 }
    hit         { 1 }
  end
end