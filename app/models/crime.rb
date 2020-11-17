class Crime < ApplicationRecord
  has_one :skillset
  belongs_to :boss, class_name: 'User'
  belongs_to :right_hand, class_name: 'User'
end
