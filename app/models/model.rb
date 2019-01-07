class Dog < ApplicationController

  @dog = Dog.create(:name => params[:name], :age => params[:age], :breed => params[:breed])
  #dog.save

  end