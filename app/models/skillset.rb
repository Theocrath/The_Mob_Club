class Skillset < ApplicationRecord
  belongs_to :user, optional: true
  belong_to :crime
end
