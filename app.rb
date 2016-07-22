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
    puts params[:user]
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

  #page for editing user profile
  get '/users/:id/edit' do
    erb :"users/edit"
  end

  #page for deleting user profile
  delete '/users/:id' do
    @deleted_user = User.find(params[:id])

    if @deleted_user.destroy
      redirect("/users")
    else
      erb :"users/#{ @deleted_user.id }"
    end

  end

  # post '/users' do
  #
  # end

end
