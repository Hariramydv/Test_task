class Campaign < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_many :discussion_topics
end
