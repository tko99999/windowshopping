class ScrapingItemController < ApplicationController
  agent = Mechanize.new                  #agentは任意の変数
      page = agent.get("https://www......")  #pageは任意の変数 getの引数はサイトのURL
      elements = page.search('div.idxcol a') #div.idxcol aは取得したい要素  elementsは任意の変数
      elements.each do |element|
        fish = Fish.new                      #Fishは任意のクラス、fishは任意のインスタンス
        fish.name = element.inner_text
        fish.save
      
end
