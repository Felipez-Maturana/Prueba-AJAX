# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Complaint.delete_all
User.delete_all
Company.delete_all

20.times do |x|
  c = Company.create!(id: x+1,name: "Company #{x+1}")
end

30.times do |x|
  u = User.create!(id: x+1, email: "usuario#{x+1}@users.com", password: "userpassword#{x+1}")
end

250.times do |x|
  Complaint.create!(id: x+1, name: "Complaint #{x+1}", description: "Description of the complaint #{x+1}" ,user: User.find(x%30+1), company: Company.find(x%20+1))
end
