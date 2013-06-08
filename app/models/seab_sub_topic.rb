class SeabSubTopic < ActiveRecord::Base
  #Model Relations
  belongs_to :seab_topic
  has_many :topics
end
