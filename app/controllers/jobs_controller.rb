class JobsController < ApplicationController
    def home
        # get all jobs
        # get all slayers
        # anything else you want
    end

    def index
        @jobs = Job.all
    end
    
    # Get job by ID and display individual job view to the user
    def show
        @job = Job.find(params[:id])
    end

    def new
    end
    
    #Create new job and save job, redirect to jobs page
    def create
        @job = Job.new(job_params)
        
        @job.user_id = current_user.id
        if (@job.save)
            redirect_to @job
        else 
            render 'new'
        end
    end

    def edit
        @job = Job.find(params[:id])
    end

    def update
        @job = Job.find(params[:id])
        
        if @job.user_id = current_user.id
            (@job.update(job_params))
            redirect_to @job
        else 
            render 'edit'
        end
    end

    def destroy
        @job = Job.find(params[:id])
        @job.destroy

        redirect_to jobs_path
    end

    private
    def job_params
        params.require(:job).permit(:title, :description, :amount)
    end
end
