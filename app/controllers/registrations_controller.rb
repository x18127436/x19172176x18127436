class RegistrationsController < Devise::RegistrationsController
  def create
    if verify_recaptcha
      super
    else
      build_resource(sign_up_params)
      clean_up_passwords(resource)
      flash[:warning] = "There was an error with recaptcha. Please tick the recaptcha check box."
      flash.delete :recaptcha_error
      render :new
    end
  end

end