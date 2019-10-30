require 'faker'

puts 'Seeding started'

# RESTAURANT + REVIEW SEED
# 5.times do
#   new_resto = Restaurant.create!(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.full_address,
#     category: %w(chinese italian japanese french belgian).sample,
#     phone_number: Faker::PhoneNumber.phone_number_with_country_code
#   )

#   Review.create!(
#     content: Faker::Restaurant.review,
#     rating: (0..5).to_a.sample.to_i,
#     restaurant: new_resto
#   )

#   puts 'Seed OK'
# end

# REVIEWS SEED
100.times do
  id = (1..16).to_a.sample.to_i
  random_resto = Restaurant.find(id)

  Review.create!(
    content: Faker::Restaurant.review,
    rating: (0..5).to_a.sample.to_i,
    restaurant: random_resto
  )

  puts 'Seed OK'
end

puts 'Seeds worked all right'
