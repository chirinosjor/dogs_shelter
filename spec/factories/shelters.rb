FactoryBot.define do
  factory :shelter do
    name { "MyString" }
    address { "MyString" }
    description { "MyString" }
    capacity { 1 }
    dog { nil }
  end
end
