class CreateBucketlists < ActiveRecord::Migration[5.1]
  def change
    create_table :bucketlists do |t|
      t.string :bl_name
      t.string :task

      t.timestamps
    end
  end
end
