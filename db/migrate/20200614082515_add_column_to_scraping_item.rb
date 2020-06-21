class AddColumnToScrapingItem < ActiveRecord::Migration[6.0]
  def up
    t.string :color
    t.string :category
    t.sting :image_url
  end
