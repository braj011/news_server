require 'news-api'

class NewsApisController < ApplicationController

  include HTTParty

    def create

      # def query
      #   type = params[:type]
      #   query = params[:query]
      #   sort = params[:sort]
      #   base_url = "https://newsapi.org/v2"
      #   request = HTTParty.get(base_url + '/' + type + '?q=' + query + '&sortBy=' + sort + '&apiKey=' + ENV['NEWSKEY']).to_json
      #   @request_hash = JSON.parse(request)

      # end 
      def query_headlines
        base_headlines_url = "https://newsapi.org/v2/top-headlines?"
        country = params[:country] # 2 letter country code
        category = 
          if params[:category] == "All"
            '' 
          else 
            "&category=#{params[:category]}"
          end 
        request = HTTParty.get(base_headlines_url+ 'country=' + country + category + '&apiKey=' + ENV['NEWSKEY']).to_json
        @request_hash = JSON.parse(request)
      end 

    # render json: query
    render json: query_headlines
      
   end

end 