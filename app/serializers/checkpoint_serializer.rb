class CheckpointSerializer < ActiveModel::Serializer
  attributes :id, :checkpoint, :lesson_id, :description, :videourl, :objective
end
