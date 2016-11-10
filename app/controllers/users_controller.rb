class UsersController < ApplicationController
before_action :authenticate_user!
before_action :set_user, only: [:show, :edit, :update, :destroy, :follow]
	
	def index
	@users = User.all	
	end

	def show
	@users = User.find(params[:id])
	end
	
	def follow
		current_user.events.create(action: "Followed", eventable: @user)
		redirect_to users_path
	end
	
	private
	
	def set_user
		@user = User.find(params[:id])
	end
end
