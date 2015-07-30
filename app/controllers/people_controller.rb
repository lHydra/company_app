class PeopleController < ApplicationController
  def show
    @person = Person.find(params[:id])
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end
