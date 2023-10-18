class UsersController < ApplicationController
  def show
    @created = User.find(params[:id]).created_events
  end
end
