FactoryBot.define do
  factory :specification do
    camera { "MyString" }
    processor { "MyString" }
    ram { "MyString" }
    storage { "MyString" }
    battery { "MyString" }
    os_type { "MyString" }
    device_id { 1 }
    association :device
  end
end
