FactoryGirl.define do
  factory :user do
    name     "Numan"
    email    "n@b.com"
    password "foobar"
    password_confirmation "foobar"
  end
end