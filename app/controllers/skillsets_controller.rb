class SkillsetsController < ApplicationController
  def new
    @skillset = Skillset.new
    # @user = current_user
  end

  def create
    @user = current_user
    @skillset = Skillset.new(skillset_params)
    @skillset.user = @user

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
