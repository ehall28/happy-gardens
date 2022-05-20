class ApplicationController < ActionController::Base
    include Pundit

    rescue_from Pundit::NotAuthorizedError, with: :forbidden

    private 

    # Message when unauthorized
    def forbidden
        flash[:alert] = "You are not authorized to perform this action"
        redirect_to root_path
    end
end
