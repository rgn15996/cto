FactoryGirl.define do
  factory :user do
    name     "Jonny Storm"
    email    "stormy@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end