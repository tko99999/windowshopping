class CreateScrapingItems < ActiveRecord::Migration[6.0]
  def change
    create_table :scraping_items do |t|

      t.timestamps
    end
  end
end
