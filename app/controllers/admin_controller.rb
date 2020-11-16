class AdminController < ApplicationController
  before_action :authenticate_staff!
  
  def index
    render layout: false
  end
end
