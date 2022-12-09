class Device < ApplicationRecord
    belongs_to :brand
    has_one :specification
    validates :phone_name, :model_no, :mrp,:sp , :imei ,presence: true
    #validates :mrp ,numericality: { greater_than_or_equal_to: :sp}
    validates :imei,length: { is: 15 }
    validate :mrp_greater_than_or_equal_to_sp

  def mrp_greater_than_or_equal_to_sp
    return unless mrp and sp
    errors.add(:mrp, "must be greater than selling") unless
       mrp >= sp
  end 
  #validates :brand_id , presence: true
  validates_associated :brand
  has_one_attached :img
end
