class SeabTopic < ActiveRecord::Base
  #Model Relations
  belongs_to :subject
  has_many :seab_sub_topics
end
