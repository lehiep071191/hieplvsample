class SessionsController < ApplicationController
	before_action :check_logged_in ,only: :new
	def new
	end	
	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			log_in user
			redirect_to root_path
		else
			flash.now[:danger] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
		log_out
		redirect_to root_url
	end
	private
	def check_logged_in
		if logged_in?
			flash[:danger] = "you are logging"
			redirect_to root_path 
		end
	end
end	