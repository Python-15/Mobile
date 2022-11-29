FactoryBot.define do
  factory :brand do
    sequence (:name) {|n| "MyString #{n}" } 
    country_of_origin { "MyString" }
  end
end
