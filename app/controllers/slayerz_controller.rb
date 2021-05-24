class SlayerzController < ApplicationController
    before_action :authenticate_user!, only: [:create, :edit, :destroy]
    
    # Application home page
    def home
        @users = User.all
        @jobs = Job.all
    end

    # Slayers index page, displaying all slayers for users to browse and message directly.
    def index
        slayer_role = Roles.find_by(name: 'slayer')
        @users = slayer_role.users
        # @users = User.where(has_role? :slayer)
    end

    # Show individual slayer page with 
    def show
        @user = User.find(params[:id])
    end

    # Create slayer profile
    def create
    end

    def turn_into_slayer
        current_user.add_role :slayer
        SlayerInfo.create(user_id: current_user.id )
        redirect_to home_path
    end
end
