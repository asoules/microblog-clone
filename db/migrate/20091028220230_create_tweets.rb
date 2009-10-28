class CreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets do |t|
      t.integer  :author_id
      t.integer  :parent_id
      t.string   :body
      t.datetime :created_at
    end
  end

  def self.down
    drop_table :tweets
  end
end
