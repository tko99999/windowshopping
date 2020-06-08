class ScrapingItemController < ApplicationController
  def index
     agent = Mechanize.new
     page = agent.get('https://zozo.jp/')
     elements = page.search('title')
     puts elements
     
   end
end
