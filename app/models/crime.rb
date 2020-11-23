class Crime < ApplicationRecord
  has_one :skillset
  belongs_to :boss, class_name: 'User'
  belongs_to :right_hand, class_name: 'User', optional: true
  has_many :teams
  has_many :users, through: :teams

  validates_associated :skillset

  validates :title, length: { minimum: 2 }, allow_blank: false
  validates :date, :location, presence: true
  validates :reward, numericality: true

  has_one_attached :photo
end
