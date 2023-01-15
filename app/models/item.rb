class Item < ApplicationRecord
  belongs_to :topic
  
  validates :item, presence: true
end
