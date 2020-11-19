class AdminController < ApplicationController
  before_action :authenticate_staff!
  
  def index
    render layout: "admin"
  end

  def dogs
    @shelters = Shelter.all
    @dogs = Dog.all
    @staffs = Staff.all  
    render layout: "admin"
  end

  def shelters
    @shelters = Shelter.all
    @dogs = Dog.all
    @staffs = Staff.all  
    render layout: "admin"
  end
end
