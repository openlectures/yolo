class TopicSerializer < ActiveModel::Serializer
  embed :id
  attributes :id, :subject_id, :seab_sub_topic_id, :description, :topic
  has_many :lessons
end
