class Skillset < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :crime, optional: true
end
