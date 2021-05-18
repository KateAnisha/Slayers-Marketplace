class ApplicationController < ActionController::Base
    include Pundit

    rescue_from Pundit: NotAuthorizedError, with: :forbidden

    private

    def forbidden
        flash[:alert] = "You are not authroised to perform that action"
        redirect_to request.referrer || root_path
    end

end
