class InnovationIdeasController < ApplicationController
  before_filter :signed_in_user

  def new
    @innovation_idea = current_user.innovation_ideas.new if signed_in?
  end

  def create
    @innovation_idea = current_user.innovation_ideas.build(params[:innovation_idea])
    if @innovation_idea.save
      flash[:success] = "New innovation idea created"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
  end
end
