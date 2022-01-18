FactoryBot.define do
  factory name :developer do
    title       { Faker::Lorem.sentence(word_count: 10) }
    bytitle     { Faker::Lorem.sentence(word_count: 10).downcase }
    img         { Faker::Lorem.sentence(word_count: 10).downcase }
    description { Faker::Lorem.sentence(word_count: 10) }
  end
end