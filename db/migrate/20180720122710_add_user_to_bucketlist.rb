class AddUserToBucketlist < ActiveRecord::Migration[5.1]
  def change
    add_reference :bucketlists, :user, foreign_key: true
  end
end
