class RatingsController < ApplicationController

  def create
    @rating = current_user.ratings.build(params[:rating], without_protection: true)
    @rating.save

    respond_to do |format|
      format.html {render nothing: true}
    end
  end

  def update
    @rating = current_user.ratings.find(params[:id])
    @rating.update_attribute(:score,params[:rating][:score])

    respond_to do |format|
      format.html {render nothing: true}
    end
  end
end
