class HomeController < ApplicationController
    def index
        @shelters = Shelter.all
        @dogs = Dog.all 
        render :layout => false
    end
end
