# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

raw_works = [
  [1,"hoge","http://www.example.com"],
  [2,"fuga","https://www.example.com"],
]

works = raw_works.map { |w| { id: w[0], name: w[1], url: w[2] } }

Work.delete_all
Work.create(works)
