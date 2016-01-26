class MetaInfo < ActiveRecord::Base

  # gets meta data of a single page
  def self.get_meta_info(url)
    meta_tags = MetaInspector.new(url).meta_tags["name"]
    app_store_id = meta_tags["al:ios:app_store_id"]
    app_store_id = meta_tags["al:ios:app_store_id"][0]

  end

  # gets meta of multiple pages
  def self.get_meta_infos(urls)

  end
end
