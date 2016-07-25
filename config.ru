require 'rubygems'
require 'bundler'

Bundler.require

require './models/user' #model
require './models/brand'
require './models/category'
require './models/product'

require './app' #controller
require './controllers/users'
require './controllers/brands'
require './controllers/categories'
require './controllers/products'

use Rack::MethodOverride #allow delete and put requrests
run RedmartSinatra
