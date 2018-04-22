class ActivitiesController < ApplicationController
  
  def index

  end

  def get

      @given_time = params[:length].to_i
      @chosen_activity = Activity.where('length > ?', @given_time).take# .first
      puts @chosen_activity
      puts @given_time
      render :index

    end

  def show

    @all_activities = Activity.all
  
  end 

  def new

    if @current_user
      @activity = current_user.activities.build
    else
      @activity = Activity.new
    end 
  
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

    params.require(:activity).permit(:name, :length, :description)# permit(:name, :difficulty, :notes, :martial_art, :form_type, :link, :belt_color)
  
  end

end
