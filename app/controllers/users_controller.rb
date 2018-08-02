class UsersController < ApplicationController
  def index
  end

  def create
    mon_user = User.new(email: params[:email] , password: params[:password])
    if mon_user.save
        log_in(mon_user)
  	  	redirect_to '/'
      end
  end

  def show
  	@id = params[:id]
  	@user = User.find(@id)

    puts "-"*50
    print "\tES-TU ES-TU LOGGER :"
    puts logged_in?
    puts "-"*50
  end

  def edit
    @id = params[:id]
    @user = User.find(@id)
  	@email = @user.email
  end

  def update
    @user = User.find(params[:id])
    
    user_param = params.require(:user).permit(:email, :password)
    @user.update(user_param)

  	redirect_to root_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to root_path
  end


  def secret

  end


end
