# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
EAsset.delete_all
EAsset.create!(tag_id: 'E2304567', staff: 'Chapman', e_type: "Staff Laptop")
EAsset.create!(tag_id: 'E2308967', staff: 'Chapman', e_type: "Staff Desktop", model: 'Apple')
EAsset.create!(tag_id: 'E2305849', staff: 'Cumberlander', e_type: "TV", model: 'Sony')
EAsset.create!(tag_id: 'E2306758', staff: 'Cumberlander', e_type: "Student Desktop", model: 'Lenovo')
EAsset.create!(tag_id: 'E2300192', staff: 'Fleischer', e_type: "Staff Laptop", model: 'Apple')