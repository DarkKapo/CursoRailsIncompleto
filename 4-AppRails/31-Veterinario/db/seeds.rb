# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fechas = "01-01-2020".to_date.."31-12-2021".to_date
fechas = fechas.to_a
clients = Client.all

12.times do |p|
    Client.create!(
        name: Faker::Name.name,
        phoneNumber: Faker::PhoneNumber.cell_phone_in_e164,
        email: Faker::Internet.email
    )
end

10.times do |a|
    Pet.create(
        name: Faker::Creature::Animal.name,
        race: Faker::Creature::Dog.breed,
        birthdate: Faker::Date.between(from: '2020-01-01', to: '2021-12-31'),
        client_id: clients.sample.id
    )
end
