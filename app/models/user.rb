class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :skillset
  has_many :crimes, foreign_key: 'boss'
  has_many :crimes, foreign_key: 'right_hand'
end
