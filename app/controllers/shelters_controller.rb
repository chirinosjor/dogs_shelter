class SheltersController < ApplicationController
    before_action :find_shelter, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_staff!

    # Layout for admin panel    
    layout "admin"


    def index
        @shelters = Shelter.all   
    end

    def new
        @shelter = Shelter.new
        render layout: "admin"
    end

    def create
        @shelter = Shelter.new(shelter_params)
        if @shelter.save
            redirect_to admin_shelters_path
        else
            redirect_to new_shelter_path
        end
    end

    def show
    end

    def edit
    end

    def update
        @shelter.update(shelter_params)
        redirect_to shelters_path
    end

    def destroy
        @shelter.destroy
        redirect_to shelters_path
    end
    
    private
        def shelter_params
            params.require(:shelter).permit(:id, :name, :address, :description, :capacity)
        end

        def find_shelter
            @shelter = Shelter.find(params[:id])
        end
end