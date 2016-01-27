class MetaInfo < ActiveRecord::Base

  enum os_type: [ :ios, :android]

  before_save :default_values

  # set default values
  def default_values
    self.app_name ||= 'None found'
    self.url ||= 'None found'
    if self.os_type=='android'
      self.package ||= 'None found'
    else
      self.app_store_id ||= 'None found'
    end
  end

  # gets meta data of a single page
  def self.get_meta_info(url, batch_number)
    meta_tags = MetaInspector.new(url).meta_tags


    #iOS
    MetaInfo.create(
        app_name: meta_tags.find_all_values_for("al:ios:app_name")[0],
        app_store_id: meta_tags.find_all_values_for("al:ios:app_store_id")[0],
        url: meta_tags.find_all_values_for("al:ios:url")[0],
        os_type: 'ios',
        original_url: url,
        batch_number: batch_number
    )

    #Android
    MetaInfo.create(
        app_name: meta_tags.find_all_values_for("al:android:app_name")[0],
        package: meta_tags.find_all_values_for("al:android:package")[0],
        url: meta_tags.find_all_values_for("al:android:url")[0],
        os_type: 'android',
        original_url: url,
        batch_number: batch_number
    )


  end

  # gets meta of multiple pages
  def self.get_meta_infos(urls)

    if MetaInfo.all.count > 0
      batch_number = MetaInfo.all.max_by(&:batch_number).batch_number + 1
    else
      batch_number = 1
    end

    urls.each do |url|
      get_meta_info(url, batch_number)
    end

    #return metadata
    MetaInfo.where(batch_number: batch_number)

  end
end
