class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)

  	if current_user.sign_in_count > 1
  		profiles_path
  	else
  		edit_profile_path(current_user.profile.id)
  	end
  end

  def create
  @record = Record.new
    
	  if @record.save
	    ModelMailer.new_record_notification(@record).deliver
	    redirect_to @record
  	  end
  end
end
