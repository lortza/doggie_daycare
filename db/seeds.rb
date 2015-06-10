# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Breed.create(name: 'Australian Shepherd')
Breed.create(name: 'Border Collie')
Breed.create(name: 'Jack Russell')
Breed.create(name: 'Pit Bull')
Breed.create(name: 'Shih-tzu')
Breed.create(name: 'Standard Poodle')
Breed.create(name: 'Miniature Poodle')
Breed.create(name: 'Doberman')
Breed.create(name: 'Bulldog')
Breed.create(name: 'Malamute')
Breed.create(name: 'Eskimo')
Breed.create(name: 'Chihuahua')
Breed.create(name: 'Yorkie')
Breed.create(name: 'Boxer')
Breed.create(name: 'Mutt')

categories = Category.create([{name: 'toys'}, {name: 'treats'}, {name: 'food'}, {name: 'accessories'}])

Vet.create(name: "Dr. Sbaitso", phone: "555-867-5309")
Vet.create(name: "Dr. Zhivago", phone: "555-778-8265")
Vet.create(name: "Dr. Who", phone: "555-678-2093")

Owner.create(first_name: "Kelly", last_name: "Kapowski", phone: "504-555-5014", emerg_contact: "AC Slater", emerg_phone: "985-555-0235", street_address: "123 Main Street", zip: "70115")

Owner.create(first_name: "Zack", last_name: "Morris", phone: "504-555-5014", emerg_contact: "Jacki", emerg_phone: "985-555-0235", street_address: "321 Broad Street", zip: "70115")

Dog.create(name: "Falcor", breed_id: 1, owner_id: 1, vet_id: 1, birth_date: Date.new(2015, 7, 8), in_daycare: true)

Dog.create(name: "Ralphie", breed_id: 5, owner_id: 2, vet_id: 3, birth_date: Date.new(2015, 3, 10), in_daycare: true)

Product.create(name: "Pink Collar", price: "14.99", quantity: 10, description: "Made from 100% durable leather material. Hand stitched for added strength.Decorated with 2 Rows Rhinestone and heart studded charm, 5 adjustment holes for adjustment. Fashionable and personalized designed for your pet.", brand: "SuperFur", rating: 5, category_id: 3)

