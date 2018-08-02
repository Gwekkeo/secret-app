class StaticPagesController < ApplicationController
  def home
  	@users_tab = User.all
  end


end
