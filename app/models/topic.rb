class Topic < ApplicationRecord

  belongs_to :user
  has_many :items

  validates :topic_item, presence: true
end
