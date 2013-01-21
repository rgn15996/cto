class StaticPagesController < ApplicationController
  def home
  	@innovation_ideas = InnovationIdea.includes(:user).order("created_at DESC") if signed_in?
  end

  def help
  end

  def about
  	
  end

  def contact
  	
  end
end
