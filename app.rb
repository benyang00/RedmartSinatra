class RedmartSinatra < Sinatra::Base #Controller

  get '/' do
    erb 'This is the home page'
  end

  # GET /users LIST all the books
  get '/users' do
    @users = User.all
    erb :'users/index'
  end

  get '/users/new' do
    #Add new users
    erb: :'users/new'
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'users/show'
  end

  get '/users/:id/edit' do
    erb :'users/edit'
  end

  # get '/users/name/:name' do
  #   @user = User.where(name: params[:name]).first
  #   erb :'each_user_name'
  # end

  get '/main' do
    erb 'This is the main page.'
  end
  # # GET /users/1 GET books with ID 1
  # get '/books/:id' do
  #   erb :'each_book'
  #
  # end
  #

end
