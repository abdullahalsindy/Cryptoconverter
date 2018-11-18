# The ApplicationController class is responsible for supplying the app data to the Application view
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #add this when calculator is done to make sure only our users can see it
    #before_action :authenticate_user!, except: [:index, :application] 
end
