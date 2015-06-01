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
