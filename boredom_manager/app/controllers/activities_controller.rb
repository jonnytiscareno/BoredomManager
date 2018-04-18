class ActivitiesController < ApplicationController
  def index
    @all_activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
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
    params.require(:activity).permit(:name, :difficulty, :notes, :martial_art, :form_type, :link, :belt_color)
  end

end
