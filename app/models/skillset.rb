class Skillset < ApplicationRecord
  belongs_to :user
  belongs_to :crime

  validates :close_combat, :long_range_weapons, :mid_range_weapons, :explosives, :infiltration, :hacking, :lockpicking, :seduction, numericality: true
end
