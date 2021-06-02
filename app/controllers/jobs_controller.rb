class JobsController < ApplicationController
    before_action :check_auth, except: [:index]
    
    # Display all jobs
    def index
        @jobs = Job.all
        available_jobs = Jobs.find_by(accepted: nil)
        if available_jobs.accepted == nil
            return Job.all
        end
    end
    
    # Get job by ID and display individual job view to the user
    def show
        @job = Job.find(params[:id])
        @current_job = Job.find(params[:id])
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

    # Enable slayers to accept a job

    def accepted_job
        @current_job = Job.find(params[:id])
        
        if @current_job.accepted == nil
            @current_job.update(accepted: current_user.first_name)
            redirect_to jobs_path
        end
    end

    # Destroy job
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
        params.require(:job).permit(:title, :description, :amount, :accepted)
    end

    def accepted_job_params
        params.require(:job).permit(:accepted)
    end
end
