class HomeController < ApplicationController
  def index
    @shelters = Shelter.all
    @dogs = Dog.all
    @staffs = Staff.all  
  end
end
