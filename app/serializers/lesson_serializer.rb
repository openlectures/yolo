class LessonSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :lesson, :topic_id, :user_id
  has_many :checkpoints
end
