class JobsController < ApplicationController
    def show
        @job = Job.find(params[:id])
    end

    def new
    end
    
    def create
        @job = Job.new(params[:job])
        @job.save
        redirect_to @job
    end

    private
    def job_params
        params.require(:job).permit(:title, :description, :amount)
    end
end
