class Device < ApplicationRecord
    belongs_to :brand
    has_one :specification
    validates :phone_name, :model_no, :mrp,:sp ,:availability_status, :imei ,presence: true
    #validates :mrp ,numericality: { greater_than_or_equal_to: :sp}
    #validates :imei,length: { is: 15 }
end
