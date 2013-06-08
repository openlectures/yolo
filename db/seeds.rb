%w{Economics Chemistry General\ Paper Physics Mathematics Biology Literature}.each do |c|
  Subject.create(subject: "#{c}")
end

[1,2,3,4,5,6,7].each do |c|
  10.times do {
    SeabTopic.create(subject_id: "#{c}", topic: Faker::Name.name, description: Faker::Lorem)
  }
end
SeabSubTopic.create(seab_topic_id: "1", topic: "Demand and Supply")
Topic.create(subject_id:"1", seab_sub_topic_id: "1", topic: "Hello", description: "Hello")
Lesson.create(topic_id: "1", lesson: "Supply Shifts", user_id: "1")
Checkpoint.create(lesson_id: "1", checkpoint: "Supply checkpoint", description: "lolol", videourl: "yolourl", objective: "complete the yolo")
