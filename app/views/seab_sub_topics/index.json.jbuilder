json.array!(@seab_sub_topics) do |seab_sub_topic|
  json.extract! seab_sub_topic, :topic, :seab_topic_id
  json.url seab_sub_topic_url(seab_sub_topic, format: :json)
end
