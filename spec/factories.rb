FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com" }
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :innovation_idea do
    title "Revolutionary idea"
    description "Do something really extraordinary"
  end

  factory :initiative do
    name "My whizzy new idea"
    description "This is my whizzy new idea this is..."
    user
  end
end