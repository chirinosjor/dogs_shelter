class DogsController < ApplicationController
    before_action :find_dog, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_staff!, only: [:new, :create, :edit, :update, :destroy]

    def index
        @dogs = Dog.all    
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.new(dog_params)
        if @dog.save
            redirect_to dogs_path
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        @dog.update(dog_params)
        redirect_to dogs_path
    end

    def destroy
        @dog.destroy
        redirect_to dogs_path
    end
    
    private
        def dog_params
            params.require(:dog).permit(:id, :name, :dog_size, :age, :gender, :description)
        end

        def find_dog
            @dog = Dog.find(params[:id])
        end
end
