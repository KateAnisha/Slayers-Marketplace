class ApplicationController < ActionController::Base

    before_action :authenticate_user!, except: [:index, :show]
    include Pundit
    # rescue_from Pundit: NotAuthorizedError, with: :forbidden

    private

    def forbidden
        flash[:alert] = "You are not authroised to perform that action"
        redirect_to request.referrer || root_path
    end

end
