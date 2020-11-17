class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  before_action :current_user_json, only: [ :profile ]

  def home
  end

  def profile
  end

  private

  def current_user_json
    render json: {
      close_combat: current_user.skillset.close_combat
      long_range_weapons: current_user.skillset.long_range_weapons,
      mid_range_weapons: current_user.skillset.mid_range_weapons,
      explosives: current_user.skillset.explosives,
      infiltration: current_user.skillset.infiltration,
      hacking: current_user.skillset.hacking,
      lockpicking: current_user.skillset.lockpicking, 
      seduction: current_user.skillset.seduction
     }
  end
end
