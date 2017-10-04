require 'grape'

class MyApi < Grape::API
  get '/' do
    { message: 'hello' }
  end

  route_param :name do
    get do
      { message: "hello #{params[:name]}"}
    end
  end
end

run MyApi