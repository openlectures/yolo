class CreateSeabTopics < ActiveRecord::Migration
  def change
    create_table :seab_topics do |t|
      t.string :topic
      t.text :description
      t.integer :subject_id

      t.timestamps
    end
  end
end
