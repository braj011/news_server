require 'news-api'

class NewsApisProfileController < ApplicationController

  include HTTParty

    def create
    def query
      type = params[:type]
      query = params[:query]
      sort = params[:sort]
      base_url = "https://newsapi.org/v2"
      request = HTTParty.get(base_url + '/' + type + '?q=' + query + '&sortBy=' + sort + '&apiKey=' + ENV['NEWSKEY']).to_json
      puts request
      @request_hash = JSON.parse(request)
    end 
    render json: query
  end
end 