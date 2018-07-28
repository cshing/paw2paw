# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
    {first_name: 'Alice',
    last_name: 'Jones',
    email: 'alice@alice.com',
    password_digest: '1234',
    avatar: ''
    },
    {first_name: 'Bob',
    last_name: 'Bay',
    email: 'bob@bob.com',
    password_digest: '1234',
    avatar: ''
    }
])

sitters = Sitter.create({
    name: 'Alice',
    address: '198 W Hastings St. Vancouver, BC V6B 1H2',
    summary: "I've been a dog mom for 5 years, I love doggies.",
    rules: 'Prefer small and medium dogs',
    price: 30,
    latitude: 49.282223,
    longitude: -123.109442,
    user_id: 1
})

availabilities = Availability.create([
    {
    sitter_id: 1,
    avail_date: '2018-08-09T19:00:00.000Z'
    },
    {
    sitter_id: 1,
    avail_date: '2018-08-10T19:00:00.000Z'
    }
])

puts 'SEED DONE'