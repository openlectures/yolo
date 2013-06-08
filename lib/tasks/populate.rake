namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'ffaker'

    Subject.populate 10 do |subject|
      subject.subject = Faker::Lorem.word
    end

    SeabTopic.populate 50 do |seabtopic|
      seabtopic.topic = Faker::Lorem.word
      seabtopic.description = Faker::Lorem.paragraph
      seabtopic.subject_id = [1..10].sample()
    end

    SeabSubTopic.populate 100 do |seabsubtopic|
      seabsubtopic.topic = Faker::Lorem.word
      seabsubtopic.seab_topic_id=[1..50].sample()
    end

    Topic.populate 100 do |topic|
      topic.topic = Faker::Lorem.word
      topic.subject_id = [1..10].sample()
      topic.seab_sub_topic_id=[1..100].sample()
      topic.description=Faker::Lorem.paragraph
    end

    Lesson.populate 100 do |lesson|
      lesson.lesson = Faker::Lorem.word
      lesson.topic_id=[1..100].sample()
      lesson.user_id=[1..100].sample()
    end

    Checkpoint.populate 1000 do |cp|
      cp.checkpoint = Faker::Lorem.word
      cp.lesson_id = [1..100].sample()
      cp.description = Faker::Lorem.paragraph
      cp.videourl = Faker::Lorem.word
      cp.objective = Faker::Lorem.sentence
    end
  end
end
