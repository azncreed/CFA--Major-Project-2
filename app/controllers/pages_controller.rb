class PagesController < ApplicationController
  def index
  
  end

  def about

  end

  def dashboard
  	@applies = Apply.all
  end
end
