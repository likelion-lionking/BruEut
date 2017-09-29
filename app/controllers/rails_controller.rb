class RailsController < ApplicationController
def db
  unless current_user.tier == 1
    redirect_to root_path
  end
end
