json.array!(@topics) do |topic|
  json.extract! topic, :subject_id, :seab_sub_topic_id, :description
  json.url topic_url(topic, format: :json)
end
