@checkpoints.each do |c|
  json.title c.checkpoint
  json.description c.description
  json.lecturer "Dub"
  json.url c.videourl
  json.lesson c.lesson
  json.topic c.topic
  json.seab c.seab_sub_topic
  json.subject c.subject
end
