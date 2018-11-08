require 'news-api'

class API 


  def initialize 
    newsapi = News.new('4504a69831fd40fb967a5cd2328c3e58')  
  end 

  def getsources 
    self.newsapi.get_sources(country: ‘us’, language: ‘en’)
  end 

end 