FactoryBot.define do
  factory :specification do
    camera { 1 }
    processor { "MyString" }
    ram { 1 }
    storage { 1 }
    battery { 1 }
    os_type { "MyString" }
    
    association :device
  end
end
