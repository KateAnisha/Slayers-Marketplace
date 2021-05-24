class SlayerzController < ApplicationController
    before_action :authenticate_user!, only: [:create, :edit, :destroy]
    # Application home page
    def home
        @users = User.all
        @jobs = Job.all
    end

    # Slayers index page, displaying all slayers for users to browse and message directly.
    def index
        @users = User.all
    end

    # Show individual slayer page with 
    def show
        @users = User.find(params[:id])
    end

    # Create slayer profile
    def create
        @users = User.all
    end

    def turn_into_slayer
        current_user.add_role :slayer
        redirect_to home_path
    end
end
