class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
  
    get "/dogs" do
    @dog = Dog.all
    erb :index
  end

  get "/dogs/new" do
    @dog = Dog.create(params[:name, :age, :breed])
    erb:show
   #dog.save
  end
end 
