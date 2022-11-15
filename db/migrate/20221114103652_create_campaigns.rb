class CreateCampaigns < ActiveRecord::Migration[7.0]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.string :purpose
      t.string :estimated_duration
       t.integer :user_id
      t.timestamps
    end
  end
end
