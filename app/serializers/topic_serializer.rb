class TopicSerializer < ActiveModel::Serializer
  attributes :id, :subject_id, :seab_sub_topic_id, :description
end
