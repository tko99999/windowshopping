class CreateScrapingItems < ActiveRecord::Migration[6.0]
  def change
    create_table :scraping_items do |t|
      t.string :brandname
      t.string :itemname
      t.string :price
      t.timestamps
    end
  end
end
