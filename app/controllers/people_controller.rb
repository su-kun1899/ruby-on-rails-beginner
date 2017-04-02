class PeopleController < ApplicationController
  layout 'people'

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
    @person = Person.new params.require(:person).permit(:name, :age, :mail)

    if @person.save
      # noinspection RubyResolve
      redirect_to '/people'
    else
      error_message = ''
      @person.errors.messages.each do |key, values|
        values.each do |value|
          error_message += '<span style="color:red">' + key.to_s + '</span> ' + value + '<br>'
        end
      end
      @msg = error_message.html_safe
      render 'input'
    end
  end

  def update
    person = Person.find(params[:id])
    # noinspection RubyResolve
    person.update(params.require(:person).permit(:name, :age, :mail))
    # noinspection RubyResolve
    redirect_to '/people'
  end

  def delete
    person = Person.find(params[:id])
    person.destroy
    # noinspection RubyResolve
    redirect_to '/people'
  end

  def search
    @msg = 'please type search word...'
    @people = Array.new
    # noinspection RubyResolve
    if request.post?
      obj = Person.find params['find']
      @people.push obj
    end
  end
end
