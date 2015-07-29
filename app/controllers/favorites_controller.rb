class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = current_user.favorites.all.order('created_at DESC') if current_user
  end

end
