class UsersController < ApplicationController
  before_action :require_login
  before_action -> { authorize(current_access_token) }, only: [:index, :show]

  MOCKED_USERS = [
      { username: "carlaurrea", name: "Carla Urrea", email: "carla@example.com" },
      { username: "johndoe", name: "John Doe", email: "john@example.com" },
      { username: "janedoe", name: "Jane Doe", email: "jane@example.com" }
  ]

  def index
    @users = MOCKED_USERS
      { username: "janedoe", name: "Jane Doe", email: "jane@example.com" }

  end

  def show
    @user = MOCKED_USERS[params[:id].to_i] 
  end
end