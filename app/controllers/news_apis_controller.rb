require 'news-api'

class NewsApisController < ApplicationController

  include HTTParty

  def index
    
    # TEST:  /top-headlines?country=us  

    
    def query
      base_url = "https://newsapi.org/v2"
      api_key = "#{ENV['NEWSKEY']}"
      puts api_key
      request = HTTParty.get(base_url+"/top-headlines?country=us&apiKey="+api_key).to_json
      @request_hash = JSON.parse(request)
    end 

    render json: query
    end

end 

