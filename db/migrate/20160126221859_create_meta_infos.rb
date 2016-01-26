class CreateMetaInfos < ActiveRecord::Migration
  def change
    create_table :meta_infos do |t|
      t.string :app_name
      t.integer :app_store_id
      t.string :package
      t.string :url

      t.timestamps
    end
  end
end
