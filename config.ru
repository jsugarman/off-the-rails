require 'grape'
require_relative 'api'
require_relative 'app'

run BookApi

# class MyApi < Grape::API
#   get '/' do
#     { message: 'hello' }
#   end

#   route_param :name do
#     get do
#       { message: "hello #{params[:name]}"}
#     end
#   end
# end

# run MyApi