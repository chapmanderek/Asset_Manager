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