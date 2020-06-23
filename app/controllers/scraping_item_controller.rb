class ScrapingItemController < ApplicationController
  def index
    #これ何を取得してるんだっけ？
     agent = Mechanize.new
     page = agent.get('https://zozo.jp/')
     elements = page.search('title')
     puts elements

     #@Veiwに表示させるための定義
     @scraping_item = ScrapingItem.all

     #ブランド名取得
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('//*[@id=\“nameList\”]/li[2]/a') # ul要素の下のli要素を検索 xpathでコピーする
     puts elements
     #DBへ保存
     brandname = Scrapingitem.new
        brandname.name = elements.inner_text
        brandname.save

     #商品名取得
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('h1')
     puts elements
     #DBへ保存
     itemname = Scrapingitem.new
        itemname.name = hogehoge.inner_text
        itemname.save

     #値段取得
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('//*[@id="isLaterPay"]/div/div[2]/div[1]') #ちょっとこれがあってるか不明
     puts elements
     #DBへ保存
     price = Scrapingitem.new
        price.name = hogehoge.inner_text
        price.save

     #色の取得color
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('hogehoge') #取得の仕方がわからん
     puts elements
     #DBへ保存
     color = Scrapingitem.new
        color.name = hogehoge.inner_text
        color.save

     #カテゴリ取得category
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('//*[@id="breadCrumb"]/ul/li[3]/a') #
     puts elements
     category = Scrapingitem.new
        category.name = hogehoge.inner_text
        category.save

     #画像取得image_url
     agent = Mechanize.new
     page = agent.get("https://zozo.jp/shop/newbalance/goods-sale/41433459/?did=69286059&rid=1093")
     elements = page.search('//*[@id="photoGallery"]/div[2]') #
     puts elements
     image_url = Scrapingitem.new
        image_url.name = hogehoge.inner_text
        image_url.save
     #スクレイピングしたURLだとVeiwでエラーが出るので
     @image_path = "https://o.imgz.jp/459/42433459/42433459_8_d.jpg"

   end
end
