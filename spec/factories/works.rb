FactoryBot.define do
  factory :work do
    title { "MyString" }
    description { "MyText" }
    position { 1 }
    user { nil }
  end
end
