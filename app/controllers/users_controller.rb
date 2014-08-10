class UsersController < ApplicationController

  expose(:users)

  def index
    self.users = users.order("last_sign_in_at DESC")
  end

end

