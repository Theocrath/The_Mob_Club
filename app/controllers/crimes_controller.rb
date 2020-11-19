class CrimesController < ApplicationController
  before_action :set_crime, except: [:index, :create]
  before_action :permitted_skillset_attributes, only: [:show]

  def index
    @crimes = Crime.all
  end

  def show
  end

  def create
    @crime = Crime.new(crime_params)
    @crime.right_hand = User.find(right_hand_param[:right_hand]) unless right_hand_param[:right_hand].nil?
    
    @crime.boss = current_user

    unless @crime.save
      # We may need to change this redirect path.
    #   redirect_to profile_path, notice: 'Your plan was added to the database!'
    # else
      redirect_to profile_path, notice: 'There was an error. Please fill all the form fields.'
    end
  end

  def edit
  end

  def update
    @crime.right_hand = User.find(right_hand_param[:right_hand]) unless right_hand_param[:right_hand].empty?

    if @crime.update(crime_params)
      redirect_to crime_path(@crime), notice: 'Plan updated!'
    else
      render :new
    end
  end

  def destroy
    @crime.destroy
    # We may need to change this redirect path.
    redirect_to profile_path
  end

  private

  def set_crime
    @crime = Crime.find(params[:id])
  end

  def permitted_skillset_attributes
    @attributes = ['id', 'created_at', 'updated_at', 'user_id', 'crime_id']
  end

  def crime_params
    params.require(:crime).permit(:title, :description, :date, :location, :reward)
  end

  def right_hand_param
    params.require(:crime).permit(:right_hand)
  end
end
