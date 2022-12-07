FactoryBot.define do
  factory :specification do
    camera { "MyString" }
    processor { "MyString" }
    ram { "MyString" }
    storage { "MyString" }
    battery { "MyString" }
    os_type { "MyString" }
    
    association :device
  end
end
