class Brand < ApplicationRecord
    has_many :devices 
    validates :name, presence: true,uniqueness:true 
    
    validates :country_of_origin, presence: true
    
end
