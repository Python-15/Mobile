class ImagesSerializer
  include JSONAPI::Serializer
attributes :key, :filename,:content_type 
end
