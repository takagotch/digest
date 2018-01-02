require 'digest/sha1'

def image_registry(raw_image_data)
  img_sha1 = Digest::SHA1.hexdigest(raw_image_data)
  @image_registry[img_sha1] ||= build_image_obj(raw_image_data)
end

