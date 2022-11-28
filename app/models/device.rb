class Device < ApplicationRecord
    belongs_to :brand
    has_one :specification
    validates :phone_name, :model_no, :mrp,:sp, :availability, :IMEI ,presence: true
    
end
