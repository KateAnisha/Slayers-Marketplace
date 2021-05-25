class JobsController < ApplicationController
    before_action :check_auth, except: [:index, :show]
    
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
            flash.now[:errors] = @job.errors.full_messages
            render action: 'new'
        end
    end

    # Get job ID with params and edit job
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

    #Get job by job ID and destroy job
    def destroy
        @job = Job.find(params[:id])
        @job.destroy

        redirect_to jobs_path
    end

    def check_auth
        authorize Job
    end

    # Authorise creation of job 
    private
    def job_params
        params.require(:job).permit(:title, :description, :amount)
    end
end
