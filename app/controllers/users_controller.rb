class UsersController < ApplicationController

	def update
		puts 'update user?'
		render :update
	end 

	def update_location
		# puts params[:user][:location]
		puts "UPDATING LOCATION"
		puts user_params[:location]
		current_user.update(location: user_params[:location])
		# current_user.location = params[:user][:location]
		# current_user.save
		redirect_to root_path
	end 

	private

	def user_params
		params.require(:user).permit(:location)
	end


end
