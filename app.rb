class RedmartSinatra < Sinatra::Base

  get '/' do
    erb 'This is the home page'
  end

  # GET /users LIST all the books
  get '/users' do
    @users = User.all
    erb :'users'
  end

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
