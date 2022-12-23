class Topic < ApplicationRecord

  belongs_to :user


  validates :topic_item, presence: true
end
