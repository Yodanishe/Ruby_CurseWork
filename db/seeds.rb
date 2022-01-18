# frozen_string_literal: true

require 'faker'


# table brands

brand_attributes = [{
                      title: 'Citizen', bytitle: 'citizen',
                      img: 'abt-2.jpg', description: Faker::Superhero.name
                    },
                    {
                      title: 'Casio', bytitle: 'casio', img: 'abt-1.jpg',
                      description: Faker::Superhero.name
                    },
                    {
                      title: 'Royal London', bytitle: 'royal-london',
                      img: 'abt-3.jpg', description: Faker::Superhero.name
                    },
                    {
                      title: 'Seiko', bytitle: 'seiko', img: 'seiko.png',
                      description: Faker::Superhero.name
                    },
                    {
                      title: 'Diesel', bytitle: 'diesel', img: 'diesel.png',
                      description: Faker::Superhero.name
                    }]

brand_attributes.each do |attr|
  Developer.create(attr) unless Developer.where(attr).first
end

# table products
product_attributes = [
  {
    category_id: '1',
    dev_id: '1',
    title: 'Counter-Strike : Global Offensive',
    bytitle: 'csgo',
    content: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Commerce.price,
    old_price: Faker::Commerce.price,
    status: 1,
    keywords: 'shooter',
    description: Faker::Lorem.sentence(word_count: 10),
    img: 'csgp.png',
    hit: 1
  },
  {
    category_id: '1',
    dev_id: '2',
    title: 'Battlefield 2042',
    bytitle: 'battlefield2042',
    content: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Commerce.price,
    old_price: Faker::Commerce.price,
    status: 1,
    keywords: 'bugged',
    description: Faker::Lorem.sentence(word_count: 10),
    img: 'bf2042.png',
    hit: 1
  },
  {
    category_id: '4',
    dev_id: '2',
    title: 'FIFA 22',
    bytitle: 'fifa22',
    content: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Commerce.price,
    old_price: Faker::Commerce.price,
    status: 1,
    keywords: 'keywords',
    description: Faker::Lorem.sentence(word_count: 10),
    img: 'fifa22.png',
    hit: 1
  },
  {
    category_id: '2',
    dev_id: '3',
    title: 'Rayman Origin',
    bytitle: 'rayman',
    content: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Commerce.price,
    old_price: Faker::Commerce.price,
    status: 1,
    keywords: 'keywords',
    description: Faker::Lorem.sentence(word_count: 10),
    img: 'rayman.png',
    hit: 1
  },
  {
    category_id: '2',
    dev_id: '4',
    title: 'Monster Hunter: Rise',
    bytitle: 'monsterhunterrise',
    content: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Commerce.price,
    old_price: Faker::Commerce.price,
    status: 1,
    keywords: 'keywords',
    description: Faker::Lorem.sentence(word_count: 10),
    img: 'MonsterHunter.png',
    hit: 1
  },
  {
    category_id: '3',
    dev_id: '4',
    title: 'Resident Evil: Village',
    bytitle: 'revillage',
    content: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Commerce.price,
    old_price: Faker::Commerce.price,
    status: 1,
    keywords: 'keywords',
    description: Faker::Lorem.sentence(word_count: 10),
    img: 'revillage.png',
    hit: 1
  },
  {
    category_id: '1',
    dev_id: '5',
    title: 'Call of Duty: Vanguard',
    bytitle: 'codvanguard',
    content: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Commerce.price,
    old_price: Faker::Commerce.price,
    status: 1,
    keywords: 'keywords',
    description: Faker::Lorem.sentence(word_count: 10),
    img: 'codvanguard.png',
    hit: 1
  }

]

product_attributes.each do |attr|
  Product.create(attr) unless Product.where(attr).first
end

require 'faker'


# table devs

developer_attributes = [{
                      title: 'Valve', bytitle: 'valve',
                      img: 'valve.jpg', description: Faker::Superhero.name
                    },
                    {
                      title: 'Electronic Arts', bytitle: 'ea',
                      img: 'ea.jpg', description: Faker::Superhero.name
                    },
                    {
                      title: 'Ubisoft', bytitle: 'ubisoft',
                      img: 'ubisoft.jpg', description: Faker::Superhero.name
                    },
                    {
                      title: 'Capcom', bytitle: 'capcom',
                      img: 'capcom.png', description: Faker::Superhero.name
                    },
                    {
                      title: 'Activision', bytitle: 'activision',
                      img: 'activision.png', description: Faker::Superhero.name
                    }]

developer_attributes.each do |attr|
  Developer.create(attr) unless Developer.where(attr).first
end