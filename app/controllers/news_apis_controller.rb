require 'news-api'

class NewsApisController < ApplicationController

  include HTTParty

  def index
    
    # TEST:  /top-headlines?country=us  

    
    def query(type, query, sort)
      base_url = "https://newsapi.org/v2"
      request = HTTParty.get(base_url + '/' + type + '?q=' + query + '&sortBy=' + sort + '&apiKey=' + ENV['NEWSKEY']).to_json
      @request_hash = JSON.parse(request)
    end 

    render json: query('everything', 'bitcoin', 'popularity')
    end

end 

