# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


movie_1 = Movie.first
movie_2 = Movie.second


movie_1.characters.create(name: "Anna", race: "human", gender: "female")
movie_1.characters.create(name: "Olaf", race: "showman", gender: "genderless")

movie_2.characters.create(name: 'Moana', race: "Human", gender: "female")
movie_2.characters.create(name: 'Heihei', race: "Rooster", gender: "male")