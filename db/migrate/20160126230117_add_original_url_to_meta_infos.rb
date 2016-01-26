class AddOriginalUrlToMetaInfos < ActiveRecord::Migration
  def change
    add_column :meta_infos, :original_url, :string
  end
end
