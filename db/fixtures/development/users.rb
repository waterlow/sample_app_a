# パスワードが"password"になるように設定する
CRYPTED_PASSWORD = "$2a$10$U6KiYJ0N0DyHmIbuLnUdY.dgQyAELCdBFa45rmoWYby6Gmak1iIgi"
SALT = "pWmiB83zJUH-oQXma6xW"

User.seed(
  id: 1,
  name:  "Example User",
  email: "example@railstutorial.org",
  crypted_password: CRYPTED_PASSWORD,
  salt: SALT,
  admin: true
)

99.times do |n|
  User.seed(
    id: n + 2,
    name: Faker::Name.name,
    email: "example-#{n + 1}@railstutorial.org",
    crypted_password: CRYPTED_PASSWORD,
    salt: SALT,
  )
end

users = User.order(:created_at).take(6)

micropost_id = 1
50.times do |n|
  users.each do |user|
    Micropost.seed(
      id: micropost_id,
      user_id: user.id,
      content: Faker::Lorem.sentence(5),
      created_at: 30.days.ago + micropost_id.hours
    )
    micropost_id += 1
  end
end
