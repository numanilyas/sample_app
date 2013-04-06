class MicropostsController < ApplicationController
  before_filter :signed_in_user

  def create
  	@micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
    Micropost.find(params[:id]).destroy
    #@micropost.destroy
    redirect_to root_url
  end

  private

    def correct_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_url if @micropost.nil?
    end

  private
  def signed_in_user
    store_location
    redirect_to signin_url, notice: "Please sign in." unless signed_in?
  end
end