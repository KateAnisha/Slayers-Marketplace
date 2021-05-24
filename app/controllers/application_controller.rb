class ApplicationController < ActionController::Base

    before_action :authenticate_user!, except: [:index, :show]
    before_action :configure_permitted_parameters, if: :devise_controller?
    include Pundit

    # If user is not authorised, rescue with the following 
    rescue_from Pundit::NotAuthorizedError, with: :forbidden

    # Display forbidden error message
    private
    def forbidden
        flash[:alert] = "Slayerz are not authroised to perform that action."
        redirect_to request.referrer || home_path
    end

    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
    end

end
