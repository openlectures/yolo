class Subject < ActiveRecord::Base
  #Model Relations
  has_many :seab_topics
  has_many :topics
end
