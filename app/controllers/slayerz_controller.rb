class SlayerzController < ApplicationController

    def index
        @jobs = Job.all
    end

    def show
        @job = Job.find(params[:id])
    end

    def turn_into_slayer
        current_user.add_role :slayer
        redirect_to home_path
      end
end
