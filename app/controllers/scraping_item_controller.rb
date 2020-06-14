class ScrapingItemController < ApplicationController
  def index
     agent = Mechanize.new
     page = agent.get('https://zozo.jp/')
     elements = page.search('title')
     puts elements

     #ブランド名取得
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('//*[@id=“nameList”]/li[2]/a') # ul要素の下のli要素を検索 xpathでコピーする
     puts elements

     #商品名取得
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('h1')
     puts elements

     #値段取得
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('div.goods-price discount-price') #ちょっとこれがあってるか不明
     puts elements



   end
end
