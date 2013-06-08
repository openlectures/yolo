class Checkpoint < ActiveRecord::Base
  #Model Relations
  belongs_to :lesson
  delegate :topic, to: :lesson
  delegate :seab_sub_topic, to: :topic
  delegate :seab_topic, to: :seab_sub_topic
  delegate :subject, to: :seab_topic
end
