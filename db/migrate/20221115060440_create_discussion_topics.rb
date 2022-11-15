class CreateDiscussionTopics < ActiveRecord::Migration[7.0]
  def change
    create_table :discussion_topics do |t|
      t.text :title
      t.integer :user_id
      t.timestamps
    end
  end
end
