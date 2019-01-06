User.seed(
  id: 1,
  name:  "Example User",
  email: "example@railstutorial.org",
  password: password,
  password_confirmation: password,
  admin: true
)

99.times do |n|
  User.seed(
    id: n + 2,
    name: Faker::Name.name,
    email: "example-#{n + 1}@railstutorial.org",
    password: password,
    password_confirmation: password
  )
end
