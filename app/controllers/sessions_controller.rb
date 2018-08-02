class SessionsController < ApplicationController

	def new
	end

	def create
		@email = params[:session][:email]
		mon_user = User.find_by(email: @email.downcase)

		if mon_user && mon_user.authenticate(params[:session][:password])
			log_in(mon_user)

			redirect_to user_path(mon_user.id)
		else
			redirect_to "/login"
		end
	end

	def destroy
		log_out
		redirect_to root_path
	end

end

# params[:email]
# params[:password]