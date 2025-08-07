class UsersController < ApplicationController
  before_action :require_login
  before_action -> { authorize(current_access_token) }, only: [:index, :show]

  def index
    @users = Auth0Service.users
  end

  def show
    @user = Auth0Service.get_user(params[:id])
    return redirect_to users_path, alert: 'Usuario no encontrado' unless @user

    begin
      @user_metadata = Auth0Service.get_user_metadata(params[:id])
    rescue => e
      Rails.logger.error("Error fetching user metadata: #{e.message}")
      @user_metadata = {}
    end
  end

  def update_barista_level
    begin
      Auth0Service.update_barista_level(
        params[:id],
        params[:barista_level]
      )
      redirect_to users_path(params[:id]), notice: '¡Nivel actualizado!'
    rescue => e
      Rails.logger.error("Error updating barista level: #{e.message}")
      redirect_to user_path(params[:id]), alert: 'Error al actualizar el nivel'
    end
  end
end