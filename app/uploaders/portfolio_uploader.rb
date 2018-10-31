class PortfolioUploader < CarrierWave::Uploader::Base
  storage :aws

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def download_url(filename)
    url(response_content_disposition: %Q{attachment; filename="#{filename}"})
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
