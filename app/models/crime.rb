class Crime < ApplicationRecord
  has_one :skillset
  belongs_to :boss, class_name: 'User'
  belongs_to :right_hand, class_name: 'User', optional: true

  validates_associated :skillset

  validates :title, length: { minimum: 2 }, allow_blank: false
  # For testing purposes the description length validation is shorter. Must change this before production
  validates :description, length: { minimum: 5 }, allow_blank: false
  validates :date, :location, presence: true
  validates :reward, numericality: true
end
