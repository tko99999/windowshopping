class ScrapingItemController < ApplicationController
  def index

     #@Veiwに表示させるための定義
     @scraping_item = ScrapingItem.all

     #ブランド名取得
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search("//*[@id=\"nameList\"]/li[2]/a") # ul要素の下のli要素を検索 xpathでコピーする
     puts elements
     #DBへ保存
     scraping_item = ScrapingItem.new
        scraping_item.brandname = elements.inner_text
        scraping_item.save


     #商品名取得

     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('//*[@id="item-intro"]/h1')
     puts elements
     #DBへ保存
     scraping_item = ScrapingItem.new
        scraping_item.itemname = elements.inner_text
        scraping_item.save

     #値段取得
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('//*[@id="isLaterPay"]/div/div[2]/div[1]') #ちょっとこれがあってるか不明
     puts elements
     #DBへ保存
     scraping_item = ScrapingItem.new
        scraping_item.price = elements.inner_text
        scraping_item.save

     #色の取得color
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('hogehoge') #取得の仕方がわからん
     puts elements
     #DBへ保存
     scraping_item = ScrapingItem.new
        scraping_item.color = elements.inner_text
        scraping_item.save

     #カテゴリ取得category
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('//*[@id="breadCrumb"]/ul/li[3]/a') #
     puts elements
     scraping_item = ScrapingItem.new
        scraping_item.category = elements.inner_text
        scraping_item.save

     #画像取得image_url
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('//*[@id="photoGallery"]/div[2]') #
     puts elements
     scraping_item = ScrapingItem.new
        scraping_item.image_url = elements.inner_text
        scraping_item.save
     #スクレイピングしたURLだとVeiwでエラーが出るので
     @image_path = "https://o.imgz.jp/459/42433459/42433459_8_d.jpg"

   end

   def search
   end
   def show
   end
end
