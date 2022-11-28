FactoryBot.define do
  factory :brand do
    sequence (:Name) {|n| "MyString #{n}" } 
    CountryOfOrigin { "MyString" }
  end
end
