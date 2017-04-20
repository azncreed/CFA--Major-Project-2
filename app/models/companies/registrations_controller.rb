class Companies::RegistrationsController < Devise::RegistrationsController
  protected
    def after_sign_up_path_for(resource)
      edit_company_registration_path(resource)
    end

end