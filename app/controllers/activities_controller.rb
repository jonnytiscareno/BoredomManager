class ActivitiesController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  
  def index
    @activity = Activity.find(params[:id])

  end

  def get
      given_time = params[:length].to_i
      start_range = given_time - 10
      end_range = given_time + 10
      @chosen_activity = Activity.where(length: start_range..end_range).take
      # Activity.where('length == ?', given_time).first
      if @chosen_activity
        render :random_index
      else
        flash[:error] = "Unable to find activity in that range"
        redirect_to root_path
      end
    end

  def show

    @all_activities = Activity.all
  
  end 

  def new
    @activity = current_user.activities.build
    # if @current_user
    #   @activity = current_user.activities.build
    # else
    #   @activity = Activity.new
    # end 
  
  end

  def create

    @activity = current_user.activities.build(activity_params)
    if @activity.save
      redirect_to root_path
    else
      redirect_to new_activity_path
    end


  end

  def delete

    @activity = Activity.find(params[:id])
    @activity.delete
    redirect_to root_path

  end

  private

  def activity_params

    params.require(:activity).permit(:name, :length, :description, :category, :image)# permit(:name, :difficulty, :notes, :martial_art, :form_type, :link, :belt_color)
  
  end

end
