class Team < ApplicationRecord
  # Associations
  belongs_to :user, required: true
  belongs_to :crime, required: true

  # Validations
  validates :status, inclusion: { in: [true, false] }
end
