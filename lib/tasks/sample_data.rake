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
    30.times do |n|
      name  = Faker::Name.name
      # email = "example-#{n+1}@railstutorial.org"
      email = Faker::Internet.email
      password  = "password"
      FactoryGirl.create(:user,
                         name: name,
                         email: email,
                         password: password,
                         password_confirmation: password)
    end
    users = User.all(limit: 5)
    20.times do
      name = Faker::Lorem.sentence(2)
      description = Faker::Lorem.sentence(10)
      users.each do |user|
        FactoryGirl.create(:initiative, user: user, name: name, 
                           description: description,
                           created_at: rand(1..200).hours.ago)
        FactoryGirl.create(:innovation_idea, user: user, 
                           title: Faker::Lorem.sentence(1), 
                           description: Faker::Lorem.sentence(20), 
                           created_at: rand(1..200).hours.ago)
      end
    end
  end
end