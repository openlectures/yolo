json.array!(@checkpoints) do |checkpoint|
  json.extract! checkpoint, :checkpoint, :lesson_id, :description, :videourl, :objective
  json.url checkpoint_url(checkpoint, format: :json)
end
