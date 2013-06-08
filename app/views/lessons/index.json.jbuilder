json.array!(@lessons) do |lesson|
  json.extract! lesson, :lesson, :topic_id, :user_id
  json.url lesson_url(lesson, format: :json)
end
