namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    require 'factory_girl'
    require File.dirname(__FILE__) + '/../../spec/factories.rb'

    admin = User.create!(name: "Richard Noble",
                         email: "rich@richie.com",
                         password: "foobar",
                         password_confirmation: "foobar")
    admin.toggle!(:admin)
    50.times do |n|
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
    20.times do
      title = Faker::Lorem.sentence(1)
      description = Faker::Lorem.sentence(10)
      users.each do|user| 
        # idea = user.innovation_ideas.create!(title: title, description: description)
        # idea.created_at = rand(1..200).hours.ago
        # idea.save false
        FactoryGirl.create(:innovation_idea, user: user, created_at: rand(1..200).hours.ago)
      end
    end
  end
end