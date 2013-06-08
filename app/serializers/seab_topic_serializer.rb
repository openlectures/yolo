class SeabTopicSerializer < ActiveModel::Serializer
  attributes :id, :topic, :description, :subject_id
end
