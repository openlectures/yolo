class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :subject_id
      t.integer :seab_sub_topic_id
      t.text :description

      t.timestamps
    end
  end
end
