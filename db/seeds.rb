# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     'chinese',
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'italian',
  },
  {
    name:         'Pizza',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'italian',
  },
  {
    name:         'sushi',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'japanese',
  },
  {
    name:         'french good food',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'french',
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
