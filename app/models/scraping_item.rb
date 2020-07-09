class ScrapingItem < ApplicationRecord
  def self.search(search) #self.はUser.を意味する
     if search
       where(['username LIKE ?', "%#{search}%"]) #検索とuseanameの部分一致を表示。
     else
       all #全て表示させる
    end
end
