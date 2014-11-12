class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  #forced signout to prevent csrf attacks
  def handle_unverified_request
  	sign_out
  	super
  end
end
