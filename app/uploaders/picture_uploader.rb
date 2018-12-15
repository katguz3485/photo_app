class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :fog
  process resize_to_limit: [200, 200]


  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end

