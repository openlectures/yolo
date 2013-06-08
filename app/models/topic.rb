class Topic < ActiveRecord::Base
  belongs_to :subject
  belongs_to :seab_sub_topic
  has_many :lessons
end
