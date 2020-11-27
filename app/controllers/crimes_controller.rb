class CrimesController < ApplicationController
  before_action :set_crime, except: [:index, :create, :crime_json]
  # before_action :permitted_skillset_attributes, only: [:show]

  def index

    if params[:query].present?
      @crimes = Crime.search_crime(params[:query])
    else
      @crimes = Crime.all
    end
  end

  def show
    @team = Team.new
    @current_teams = @crime.teams
  end

  def create
    @crime = Crime.new(crime_params)

    @crime.right_hand = User.find(right_hand_param[:right_hand]) unless right_hand_param[:right_hand].nil?

    @crime.boss = current_user

    unless @crime.save
      redirect_to profile_path, notice: 'There was an error. Please fill all the form fields.'
    end
  end

  def edit
    @skillset = Skillset.find(@crime.skillset.id)
  end

  def update
    # @crime.right_hand = User.find(right_hand_param[:right_hand]) unless right_hand_param[:right_hand].nil? || params[:crime].present?
    # if @crime.update(crime_params)
    #   redirect_to crime_path(@crime), notice: 'Plan updated!'
    # else
    #   render :new
    # end
    if params[:crime].present?
      @crime.right_hand = User.find(right_hand_param[:right_hand]) unless right_hand_param[:right_hand].nil?
      if @crime.update(crime_params)
        redirect_to crime_path(@crime), notice: 'Plan updated!'
      else
        render :new
      end
    else
      redirect_to crime_path(@crime), notice: "Don't click on upload for no reason."
    end
  end

  def destroy
    @crime.destroy
    # We may need to change this redirect path.
    redirect_to profile_path
  end

  def crime_json
    @crime = Crime.find(params[:crime_id])
    # @skillset = Skillset.where("crime_id = ?", params[:crime_id])
    render json: {
      close_combat: @crime.skillset.close_combat,
      long_range_weapons: @crime.skillset.long_range_weapons,
      mid_range_weapons: @crime.skillset.mid_range_weapons,
      explosives: @crime.skillset.explosives,
      infiltration: @crime.skillset.infiltration,
      hacking: @crime.skillset.hacking,
      lockpicking: @crime.skillset.lockpicking,
      seduction: @crime.skillset.seduction
    }
  end

  private

  def set_crime
    @crime = Crime.find(params[:id])
  end

  # def reward_lenght
  #   n_to_k = @crime.reward.to_s.length
  #   if n_to_k >= 5
  #     n_to_k[-1, -2, -3].gsub
  #   # new var  = count of digits
  #   # if new var >= 5
  #   # new var =
  #   # gsub last 3 digits to k;
  # end

  # def permitted_skillset_attributes
  #   @attributes = ['id', 'created_at', 'updated_at', 'user_id', 'crime_id']
  # end

  def crime_params
    params.require(:crime).permit(:title, :description, :date, :location, :reward, :photo)
  end

  def right_hand_param
    params.require(:crime).permit(:right_hand)
  end
end
