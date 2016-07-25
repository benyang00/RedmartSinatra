class RedmartSinatra < Sinatra::Base #Controller

  #Detailed list of users information
  get '/products' do
    @products = Product.all
    erb :"products/index"
  end

  #Registration page to add new users
  get '/products/new' do
    @new_product = Product.new
    erb :"products/new"
  end

  post '/products' do
    @new_product = Product.new(params[:product])

    if @new_product.save
      redirect("/products")
    else
      erb :"products/new"
    end
  end

  #profile page of users
  get '/products/:id' do
    @product = Product.find(params[:id])
    erb :"products/show"
  end

  #for deleting user profile
  delete '/products/:id' do
    @deleted_product = Product.find(params[:id])

    if @deleted_product.destroy
      redirect("/products")
    else
      erb :"products/#{ @deleted_product.id }"
    end

  end

  #page for editing user profile
  get '/products/:id/edit' do
    @product = Product.find(params[:id])
    erb :"products/edit"
  end

  put '/products/:id' do
    @updated_product = Product.find(params[:id])

    if @updated_product.update_attributes(params[:product])
      redirect("/products")
    end

  end
end
