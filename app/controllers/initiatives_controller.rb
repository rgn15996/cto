class InitiativesController < ApplicationController
  before_filter :signed_in_user

  def new
    @initiative = current_user.initiatives.new if signed_in?
  end

  def create
    @initiative = current_user.initiatives.build(params[:initiative])
    if @initiative.save
      flash[:success] = "New initiative created"
      redirect_to @initiative
    else
      render 'new'
    end
  end

  def show
    @initiative = Initiative.find(params[:id])
  end

  def destroy
      
  end
end