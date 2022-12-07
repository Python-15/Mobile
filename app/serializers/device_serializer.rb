class DeviceSerializer
  include JSONAPI::Serializer
  attributes :phone_name, :model_no, :mrp, :sp, :availability_status,  :imei
   
  #  belongs_to :brand
  #   has_one :specification
end
