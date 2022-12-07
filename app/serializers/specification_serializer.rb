class SpecificationSerializer
  include JSONAPI::Serializer
  attributes :camera, :processor, :ram ,:storage, :battery, :os_type
end
