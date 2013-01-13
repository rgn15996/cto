namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Richard Noble",
                         email: "rich@richie.com",
                         password: "foobar",
                         password_confirmation: "foobar")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      # email = "example-#{n+1}@railstutorial.org"
      email = Faker::Internet.email
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    users = User.all(limit: 6)
    50.times do
      name = Faker::Lorem.sentence(2)
      description = Faker::Lorem.sentence(10)
      users.each { |user| user.initiatives.create!(name: name, description: description) }
    end
  end
end