class AddBatchNumberToMetaInfos < ActiveRecord::Migration
  def change
    add_column :meta_infos, :batch_number, :integer
  end
end
