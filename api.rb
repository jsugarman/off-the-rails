require 'grape'

class BookApi < Grape::API
  format :json

  helpers do
    def books
      Application.books
    end
  end

  resource :books do
    get '/' do
      { books: books }
    end

    params do
      requires :title, type: String
      requires :author, type: String
    end

    post do
      books << { title: params[:title], author: params[:author] }
    end
  end
end
