class FixTopCategoryShip < ActiveRecord::Migration
  def change
    add_column :top_category_ships, :topic_id, :integer
    add_column :top_category_ships, :category_id, :integer
  end
end
