json.array!(@seab_topics) do |seab_topic|
  json.extract! seab_topic, :topic, :description, :subject_id
  json.url seab_topic_url(seab_topic, format: :json)
end
