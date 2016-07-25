class RedmartSinatra < Sinatra::Base # Controller
  get '/' do
    erb 'This is the home page'
  end

  # Detailed list of brands information
  get '/categories' do
    @categories = Category.all
    erb :"categories/index"
  end

  # Registration page to add new brands
  get '/categories/new' do
    @new_category = Category.new
    erb :"categories/new"
  end

  post '/categories' do
    @new_category = Category.new(params[:brand])

    if @new_category.save
      redirect('/categories')
    else
      erb :"categories/show"
    end
  end

  # Brand information by ID
  get '/categories/:id' do
    @category = Category.find(params[:id])
    erb :"categories/show"
  end

  # for deleting brand
  delete '/categories/:id' do
    @deleted_category = Category.find(params[:id])

    if @deleted_category.destroy
      redirect('/categories')
    else
      erb :"categories/#{ @deleted_category.id }"
    end
  end
end
