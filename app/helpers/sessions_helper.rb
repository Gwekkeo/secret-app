module SessionsHelper
	def log_in(user)
	    session[:user_id] = user.id
	    puts "*"*60
	    print "ID DU GARS DE LA SESSION: ", session[:user_id], "\n"
	end


	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	def logged_in?
		!current_user.nil?
	end

	def log_out
		session.delete(:user_id)
		@current_user = nil
	end

end
