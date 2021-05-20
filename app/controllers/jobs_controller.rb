class JobsController < ApplicationController
    def index
    end
    
    def show
        @job = Job.find(params[:id])
    end

    def new
    end
    
    def create
        @job = Job.new(job_params)
        @job.user_id = current_user.id
        @job.save
        redirect_to @job
    end

    private
    def job_params
        params.require(:job).permit(:title, :description, :amount)
    end
end
