class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home 
  before_action :set_current_jobs, only: :profile
  before_action :set_pending_requests, only: :profile

  def home
  end

  def profile
    @skillset = Skillset.new
    @crime = Crime.new
    @crimes = Crime.where(boss_id: current_user.id)  
  end

  def current_user_json
    render json: {
      close_combat: current_user.skillset.close_combat,
      long_range_weapons: current_user.skillset.long_range_weapons,
      mid_range_weapons: current_user.skillset.mid_range_weapons,
      explosives: current_user.skillset.explosives,
      infiltration: current_user.skillset.infiltration,
      hacking: current_user.skillset.hacking,
      lockpicking: current_user.skillset.lockpicking,
      seduction: current_user.skillset.seduction
    }
  end

  private

  def set_pending_requests
    pending_requests_ar_relation = Team.where('user_id = ? AND status = ?', current_user, false)
    @pending_requests = pending_requests_ar_relation.to_a
  end

  def set_current_jobs
    current_jobs_ar_relation = Team.where('user_id = ? AND status = ?', current_user, true)
    @current_jobs = current_jobs_ar_relation.to_a
  end
end
