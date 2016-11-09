class Users::RankingsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_user
	
	def create
		
		@user.ranking.where(user_id: current_user.id).first_or_create	
				
		respond_to do |format|
			format.html {redirect_to @user}
			format.js
		end
	end

	
	

private
	
	def set_user
		@user = User.find(params[:user_id])
	end
end