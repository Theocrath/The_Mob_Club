class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_current_jobs, only: :profile
  before_action :set_pending_requests, only: :profile
  before_action :set_ranking, only: :profile

  def home
  end

  def profile
    @skillset = Skillset.new
    @crime = Crime.new
    @crimes = Crime.where(boss_id: current_user.id)
  end

  def current_user_json
    render json: {
      close_combat: current_user.skillset&.close_combat,
      long_range_weapons: current_user.skillset&.long_range_weapons,
      mid_range_weapons: current_user.skillset&.mid_range_weapons,
      explosives: current_user.skillset&.explosives,
      infiltration: current_user.skillset&.infiltration,
      hacking: current_user.skillset&.hacking,
      lockpicking: current_user.skillset&.lockpicking,
      seduction: current_user.skillset&.seduction
    }
  end

  private

  def set_user_skills
    user_skills = current_user.skillset
  end

  def set_pending_requests
    pending_requests_ar_relation = Team.where('user_id = ? AND status = ?', current_user, false)
    @pending_requests = pending_requests_ar_relation.to_a
  end

  def set_current_jobs
    current_jobs_ar_relation = Team.where('user_id = ? AND status = ?', current_user, true)
    @current_jobs = current_jobs_ar_relation.to_a
  end

  def stats_average
    user_skillset = current_user.skillset.to_json(only: %i[close_combat long_range_weapons mid_range_weapons explosives infiltration hacking lockpicking seduction])
    skillset_hash = JSON.parse(user_skillset)
    stat_sum = 0

    skillset_hash.each do |skill, stat_val|
      stat_sum += stat_val
    end

    @stats_average = stat_sum / skillset_hash.count
  end

  def set_ranking
    case stats_average
      when 0..19 then @ranking = 'Rookie'
      when 20..39 then @ranking = 'Common Wrongdoer'
      when 40..59 then @ranking = 'Standard Law Defiant'
      when 60..74 then @ranking = 'Expert Havoc Raiser'
      when 75..89 then @ranking = 'Master Criminal'
      when 90..100 then @ranking = 'Crime Overlord'
    end
  end
end

  # TRY n.1
  # def set_stats_average
  #   skills = JSON.parse(current_user_json)
  #   stat_sum = 0

  #   skills.each do |skill, stat_val|
  #     stat_sum += stat_val
  #   end

  #   @stats_average = stat_sum / skills.keys.count
  # end

