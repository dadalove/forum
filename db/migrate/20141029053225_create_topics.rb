class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|

      t.text :content
      t.string :title
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
