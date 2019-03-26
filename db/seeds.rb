# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

works = [
  [1,"hoge","http://www.example.com", "hogehoge"],
  [2,"fuga","https://www.example.com", "fugafuga"],
  [3,"moga","http://hogehoge.com", "mogomogo"]
].map { |w| { id: w[0], name: w[1], url: w[2], description: w[3] } }
Work.delete_all
Work.create(works)

tags = [
  [1,"aaa"],
  [2,"bbb"],
  [3,"ccc"],
  [4,"ddd"],
].map { |t| { id: t[0], name: t[1] } }
Tag.delete_all
Tag.create(tags)

work_tag_relations = [
  [1,1,1],
  [2,1,2],
  [3,2,3],
  [4,3,4],
].map { |wtr| { id: wtr[0], work_id: wtr[1], tag_id: wtr[2] } }
WorkTagRelation.delete_all
WorkTagRelation.create(work_tag_relations)
