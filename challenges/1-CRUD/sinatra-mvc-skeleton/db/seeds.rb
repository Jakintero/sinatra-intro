require "Faker"
#
# 10.times do |i|
#   Note.create(name: Faker::Job.name,description: Faker::Team.name, quantity: rand(9) + 1)
# end

10.times do |i|
  Note.create(name: Faker::Cat.name,description: Faker::Cat.name, quantity: rand(9) + 1)
end
