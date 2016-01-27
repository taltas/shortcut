class AddOsTypesToMetaInfos < ActiveRecord::Migration
  def change
    add_column :meta_infos, :os_type, :integer
  end
end
