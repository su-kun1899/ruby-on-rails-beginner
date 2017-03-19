class PeopleController < ApplicationController
  def index
    @msg = 'Person data.'
    @people = Person.all
  end

  def detail
    @msg = 'Indexed data.'
    @person = Person.find(params[:id])
  end
end
