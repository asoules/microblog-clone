class CreateSubscriptions < ActiveRecord::Migration
  def self.up
    create_table :subscriptions do |t|
      t.integer  :follower_id
      t.integer  :following_id
      t.datetime :created_at
    end
  end

  def self.down
    drop_table :subscriptions
  end
end
