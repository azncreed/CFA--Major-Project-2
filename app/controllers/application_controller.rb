class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception


  def after_sign_in_path_for(resource)
  jobs_path
  end

  

  def create
  @record = Record.new
    
	  if @record.save
	    ModelMailer.new_record_notification(@record).deliver
	    redirect_to @record
  	  end
  end
end
