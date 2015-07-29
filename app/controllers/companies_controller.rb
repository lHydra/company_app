class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]
  before_action :set_favorites

  def index
    @companies = Company.all
  end

  def show
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
