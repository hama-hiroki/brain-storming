class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :topic_item, null: false
      t.timestamps
    end
  end
end
