class PeopleController < ApplicationController
  def index
    @msg = 'Person data.'
    @people = Person.all
  end
end
