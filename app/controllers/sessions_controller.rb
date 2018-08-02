class SessionsController < ApplicationController

	def new
	end

	def create
		@email = params[:session][:email]
		mon_user = User.find_by(email: @email.downcase)

		if mon_user && mon_user.authenticate(params[:session][:password])
			puts logged_in?
			log_in(mon_user)
			puts logged_in?
			redirect_to user_path(mon_user.id)
		else
			redirect_to "/login"
		end
	end

	def destroy
	end

end

# params[:email]
# params[:password]