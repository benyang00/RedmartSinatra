class RedmartSinatra < Sinatra::Base # Controller
  get '/' do
    erb 'This is the home page'
  end

  # Detailed list of brands information
  get '/brands' do
    @brands = Brand.all
    erb :"brands/index"
  end

  # Registration page to add new brands
  get '/brands/new' do
    @new_brand = Brand.new
    erb :"brands/new"
  end

  post '/brands' do
    @new_brand = Brand.new(params[:brand])

    if @new_brand.save
      redirect('/brands')
    else
      erb :"brands/new"
    end
  end

  # Brand information by ID
  get '/brands/:id' do
    @brand = Brand.find(params[:id])
    erb :"brands/show"
  end

  # for deleting brand
  delete '/brands/:id' do
    @deleted_brand = Brand.find(params[:id])

    if @deleted_brand.destroy
      redirect('/brands')
    else
      erb :"brands/#{ @deleted_brand.id }"
    end
  end
end
