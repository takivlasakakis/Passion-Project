User.create(email: 'bobbysags@gmail.com', name: 'Bob Saget', password: '123')

9.times do
   User.create(email: Faker::Internet.email, name: Faker::Name.name, password: Faker::Internet.password, age: rand(18..45), timeframe: rand(1..4))
end

20.times do
   Subject.create(title: Faker::Pokemon.name)
end

40.times do
   Link.create(title: Faker::Company.buzzword)
end
