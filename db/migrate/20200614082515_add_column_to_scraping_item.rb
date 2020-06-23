class AddColumnToScrapingItem < ActiveRecord::Migration[6.0]
  def up
    add_column :scraping_items, :color, :string
    add_column :scraping_items, :category, :string
    add_column :scraping_items, :image_url, :string
  end
end
