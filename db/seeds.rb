# create teacher
teacher = User.create!(
  email: 'teacher@example.com',
  password: '123456'
)
teacher.add_role(:teacher)

#create students
10.times do
  User.create!(
    email: Faker::Internet.email,
    password: '123456'
  )
end

# create courses
10.times do
  Course.create!(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph
  )
end
