class PeopleController < ApplicationController
  before_action :set_person, only: [:show]

  def show
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end
end
