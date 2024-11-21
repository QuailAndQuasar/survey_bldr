FactoryBot.define do
  factory :question do
    text { "MyString" }
    topic
    sort_index { 1 }
  end
end
