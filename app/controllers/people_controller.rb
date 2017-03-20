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

  def edit
    @msg = 'edit data.[id = ' + params[:id] + ']'
    @person = Person.find(params[:id])
  end

  def create
    # noinspection RubyResolve
    Person.create(params.require(:person).permit(:name, :age, :mail))
    # noinspection RubyResolve
    redirect_to '/people'
  end

  def update
    person = Person.find(params[:id])
    # noinspection RubyResolve
    person.update(params.require(:person).permit(:name, :age, :mail))
    # noinspection RubyResolve
    redirect_to '/people'
  end
end
