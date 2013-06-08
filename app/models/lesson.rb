class Lesson < ActiveRecord::Base
  #Model Relations
  belongs_to :topic
  has_many :checkpoints
end
