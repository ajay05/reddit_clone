class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :subreddit, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :subreddits
  end
end
