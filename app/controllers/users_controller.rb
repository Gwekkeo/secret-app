class UsersController < ApplicationController
  def index
  end

  def create
    mon_user = User.new(email: params[:email] , password: params[:password])
    if mon_user.save
  	  	redirect_to '/'
      end
  end

  def show
  	@id = params[:id]
  	@user = User.find(@id)
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


end
