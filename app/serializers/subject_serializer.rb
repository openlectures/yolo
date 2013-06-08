class SubjectSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :subject
  has_many :seab_topics
  has_many :topics
end
