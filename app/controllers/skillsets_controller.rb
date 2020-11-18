class SkillsetsController < ApplicationController
  def new
    @skillset = Skillset.new
  end

  def create
    @skillset = Skillset.new(skillset_params)
    @skillset.user = current_user

    if @skillset.save
      redirect_to profile_path, notice: 'Skillset created!'
    else
      render :new
    end
  end

  private

  def skillset_params
    params.require(:skillset).permit(:close_combat, :long_range_weapons, :mid_range_weapons, :explosives, :infiltration, :hacking, :lockpicking, :seduction, :user_id)
  end
end
