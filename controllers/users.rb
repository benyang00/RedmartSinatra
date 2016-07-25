class RedmartSinatra < Sinatra::Base #Controller

  get '/' do
    erb 'This is the home page'
  end

  #Detailed list of users information
  get '/users' do
    @users = User.all
    erb :"users/index"
  end

  #Registration page to add new users
  get '/users/new' do
    @new_user = User.new
    erb :"users/new"
  end

  post '/users' do
    @new_user = User.new(params[:user])

    if @new_user.save
      redirect("/users")
    else
      erb :"users/new"
    end
  end

  #profile page of users
  get '/users/:id' do
    @user = User.find(params[:id])
    erb :"users/show"
  end

  #for deleting user profile
  delete '/users/:id' do
    @deleted_user = User.find(params[:id])

    if @deleted_user.destroy
      redirect("/users")
    else
      erb :"users/#{ @deleted_user.id }"
    end

  end

  #page for editing user profile
  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :"users/edit"
  end

  put '/users/:id' do
    @updated_user = User.find(params[:id])

    if @updated_user.update_attributes(params[:user])
      redirect("/users")
    end

  end
end
