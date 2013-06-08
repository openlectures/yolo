class Checkpoint < ActiveRecord::Base
  #Model Relations
  belongs_to :lesson
  belongs_to :topic, through: :lesson
  belongs_to :seab_sub_topic, through: :topic
  belongs_to :seab_topic, through: :seab_sub_topic
  belongs_to :subject, through: :seab_topic
end
