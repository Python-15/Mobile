class Brand < ApplicationRecord
    has_many :devices 
    validates :Name, presence: true,uniqueness:true 
    
    validates :CountryOfOrigin, presence: true
    
end
