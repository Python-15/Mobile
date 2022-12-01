FactoryBot.define do
  factory :device do
    phone_name { "MyString" }
    model_no { "MyString" }
    mrp { 1 }
    sp { 1 }

    availability_status { true }
    image { "MyString" }
    imei { 123456789012345 }
    
    
    association :brand
  end
end
