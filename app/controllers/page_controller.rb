class PageController < ApplicationController
  def index
    redirect_to register_path if session[:user_id].nil?
    @picture = Picture.new
    @pictures = Picture.where(user: current_user)
  end

  def secret
    redirect_to root_path unless current_user.admin?
  end
end
