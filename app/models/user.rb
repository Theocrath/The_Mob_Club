class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations 
  has_one :skillset
  # has_many :crimes

  # Validations
  validates :username, :description, presence: :true
  validates :username, uniqueness: true
  # Change minimum lenght to 50 in production
  validates :description, length: { minimum: 5, maximum: 500 }
end
