User.create(email: 'bobbysags@gmail.com', name: 'Bob Saget', password: '123', age: 60)
User.create(email: 'bobbysags@gmail.com', name: 'Calvin', password: '123', age: 6)
User.create(email: 'bobbysags@gmail.com', name: 'Hobbes', password: '123', age: 6)
User.create(email: 'bobbysags@gmail.com', name: 'Suzie', password: '123', age: 6)
User.create(email: 'bobbysags@gmail.com', name: 'Dad', password: '123', age: 6)
Link.create(title: "This is a title for a link or subject 1", user_id: 1)
Link.create(title: "This is a title for a link or subject 2", user_id: 2)
Link.create(title: "This is a title for a link or subject 3", user_id: 3)
Link.create(title: "This is a title for a link or subject 4", user_id: 4)
Link.create(title: "This is a title for a link or subject 4", user_id: 5)

# Subject.create(title: "This is a subject for a link 1")
# Subject.create(title: "This is a subject for a link 2")
# Subject.create(title: "This is a subject for a link 3")
# Subject.create(title: "This is a subject for a link 4")
# Subject.create(title: "This is a subject for a link 5")


# 9.times do
#    User.create(email: Faker::Internet.email, name: Faker::Name.name, password: Faker::Internet.password, age: rand(18..45), timeframe: rand(1..4))
# end

# 20.times do
#    Subject.create(title: Faker::Pokemon.name)
# end

# 40.times do
#    Link.create(title: Faker::Company.buzzword)
# end
