class SlayerzController < ApplicationController

    def index
        @jobs = Job.all
    end

    def show
        @job = Job.find(params[:id])
    end
end