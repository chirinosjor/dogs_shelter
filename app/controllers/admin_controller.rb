class AdminController < ApplicationController
  before_action :authenticate_staff!

  layout 'admin', only: [:new, :create]
  
  def index
    @staffs = Staff.all  
  end

  def dogs
    @shelters = Shelter.all
    @dogs = Dog.all
    @staffs = Staff.all  
  end

  def shelters
    @shelters = Shelter.all
    @dogs = Dog.all
    @staffs = Staff.all  
  end
end
