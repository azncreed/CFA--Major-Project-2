class Companies::RegistrationsController < Devise::RegistrationsController
  protected
    def after_sign_up_path_for(resource)
      new_cprofile_path(resource)
    end

end