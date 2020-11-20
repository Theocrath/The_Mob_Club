class Skillset < ApplicationRecord
  belongs_to :user, optional: true, dependent: :destroy
  belongs_to :crime, optional: true, dependent: :destroy

  validates :close_combat, :long_range_weapons, :mid_range_weapons, :explosives, :infiltration, :hacking, :lockpicking, :seduction, numericality: true
end
