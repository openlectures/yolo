class CheckpointSerializer < ActiveModel::Serializer
  attributes :id, :checkpoint, :lesson_id, :description, :videourl, :objective, :youtube_url
  def youtube_url
    object.videourl
  end

  def videourl
  	object.parsed_url
  end
end
