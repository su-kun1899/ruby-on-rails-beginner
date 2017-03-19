class PeopleController < ApplicationController
  def index
    @msg = 'Person data.'
    @people = Person.all
  end

  def detail
    @msg = 'Indexed data.'
    @person = Person.find(params[:id])
  end

  def input
    @msg = 'Add new data.'
    @person = Person.new
  end

  def create
    redirect_to '/people'
  end
end
