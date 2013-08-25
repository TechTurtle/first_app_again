class UsersController < ApplicationController
	def index
		@users = User.all 
		render json: @users, status: :ok
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			render json: @user, status: :ok
		else
			render json: {success: false, message: "Unable to create meeting"}, status: :unprocessable_entity
		end
	end

	def show
		@user = User.find_by_email(params[:user][:email])
		if @user
			render json: @user, status: :ok
		else
			create
		end
	end

	def test
		render json: {success: false, message: "is it working?"}, status: :ok
	end

end
