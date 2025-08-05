class RecipesController < ApplicationController
  before_action :require_login

  def index
    Rails.logger.debug session.inspect
    logger.debug "------ access token: #{current_access_token}"
    @recipes = RecipesProvider.get_recipes(current_access_token)
  end
end