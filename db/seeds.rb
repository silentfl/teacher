# create teacher
teacher = User.create!(
  email: 'teacher@example.com',
  password: '123456'
)
teacher.add_role(:teacher)

#create students
10.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: '123456'
  )
  user.add_role(%i(biologist mathematician philologist).sample)
end

# create courses
10.times do
  Course.create!(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph
  )
end

# create exercises for biologists
User.with_role(:biologist).each do |user|
  Exercise.create!(
    user: user,
    task: Course.first
  )
end
