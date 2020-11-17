class Team < ApplicationRecord
  # Associations
  belongs_to :user, :crime, required: true

  # Validations
  validates :status, inclusion: { in: [true, false] }
end
