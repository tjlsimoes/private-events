class UsersController < ApplicationController
  def show
    @created = User.find(self.id).created_events
  end
end
