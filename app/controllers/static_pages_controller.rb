class StaticPagesController < ApplicationController
  def home
  	@innovation_ideas = InnovationIdea.includes(:user).all if signed_in?
  end

  def help
  end

  def about
  	
  end

  def contact
  	
  end
end
