class CheckpointSerializer < ActiveModel::Serializer
  attributes :id, :checkpoint, :lesson_id, :description, :videourl, :objective

  def videourl
  	object.parsed_url
  end
end
