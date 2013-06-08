class LessonSerializer < ActiveModel::Serializer
  attributes :id, :lesson, :topic_id, :user_id
end
