class SlayerzController < ApplicationController
    before_action :authenticate_user!, only: [:create, :edit, :destroy]
    
    # Application home page
    def home
        @users = User.all
        slayer_role = Roles.find_by(name: 'slayer')
        @users = slayer_role.users
        
        @jobs = Job.all
    end

    # Slayers index page, displaying all slayers for users to browse and message directly.
    def index
        slayer_role = Roles.find_by(name: 'slayer')
        @users = slayer_role.users
    end

    # Show individual slayer page with 
    def show
        @slayer = SlayerInfo.find(params[:id])
    end

    # Create slayer profile
    def create
        @slayer_info = SlayerInfo.find_by(user_id: current_user.id)
        if @slayer_info
            if @slayer_info.update(profile_params)
                redirect_to slayerz_path(@slayer_info)
            else
                render 'new'
            end
        else
            @slayer_info = SlayerInfo.new(profile_params)
            @slayer_info.user_id = current_user.id
            if (@slayer_info.save!)
                redirect_to slayerz_path(@slayer_info)
            else
                render 'new'
            end
        end
        # @race = Race.new(race_params)

    end

    def edit
        @slayer_info = SlayerInfo.find(params[:id])
    end

    def update
        @slayer_info = SlayerInfo.find(params[:id])
        
        if @slayer_info.user_id = current_user.id
            (@slayer_info.update(profile_params))
            redirect_to slayerz_path(@slayer_info)
        else 
            render 'edit'
        end
    end

    def turn_into_slayer
        current_user.add_role :slayer
        if current_user.slayer_info == nil
            SlayerInfo.create(user_id: current_user.id )
        end
        redirect_to new_slayerz_path
    end

    private
    def profile_params
        params.require(:slayer_info).permit(:weapon, :biography, :profile_image)
    end


end
