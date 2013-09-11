# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create Tour Types
Type.delete_all
["Adventure Tours", "Special Tours", "Other Tours"].each do |type|
  Type.create(:name => type)
end  

# Create Tour Sub types  
SubType.delete_all
type_id = Type.find_by_name("Adventure Tours").id
["River Rafting","Camping","Wild Life Safaris"].each do |st|
  SubType.create(:name => st, :type_id => type_id)
end  

type_id = Type.find_by_name("Special Tours").id
["Women's Special", "Senior Citizen's Special", "Students Special", "Family Special", "Science Special"].each do |st|
  SubType.create(:name => st, :type_id => type_id)
end

type_id = Type.find_by_name("Other Tours").id
["Pilgrims", "Heritage & Cultural", "Social", "Agricultural" ].each do |st|
  SubType.create(:name => st, :type_id => type_id)
end

