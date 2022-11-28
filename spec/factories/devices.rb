FactoryBot.define do
  factory :device do
    phone_name { "MyString" }
    model_no { "MyString" }
    mrp { 1 }
    sp { 1 }

    availability { "MyString" }
    image { "MyString" }
    IMEI { 1 }
   
   
    association :brand
  end
end
