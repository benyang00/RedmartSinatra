require 'rubygems'
require 'bundler'
Bundler.require

require './models/user' #model

require './app' #controller

use Rack::MethodOverride #allow delete and put requrests
run RedmartSinatra
