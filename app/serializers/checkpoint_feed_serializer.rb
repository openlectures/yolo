class CheckpointFeedSerializer < ActiveModel::Serializer
  attributes :title, :description, :lesson, :lecturer, :url, :seab, :subject
  def title
    object.checkpoint
  end
  def lesson
    object.lesson.lesson
  end
  def lecturer
    "dub"
  end
  def url
    object.videourl
  end
  def seab
    object.seab_sub_topic.topic
  end
  def subject
    object.subject.subject
  end
end
