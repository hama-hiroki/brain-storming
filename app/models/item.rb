class Item < ApplicationRecord
  belongs_to :topic
  belongs_to :user
  
  validates :item, presence: true
end
