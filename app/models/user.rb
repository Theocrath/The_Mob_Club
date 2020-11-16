class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations 
  # belongs_to :skillset, required: true
  # has_many :crimes

  # Validations
  validates :username, :description, presence: :true
  validates :username, uniqueness: true
  validates :description, length: { minimum: 50, maximum: 500 }

end
