class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]
  before_action :set_favorites

  def index
    @companies = Company.all

    if current_user
      @fav_array = []
      @favorites.each do |fav|
        @fav_array << fav.name
      end
    end
  end

  def show
    @company_people = @company.people

    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    def set_favorites
      @favorites = current_user.favorites if current_user
    end
end
