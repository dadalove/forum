class CreateTopCategoryShips < ActiveRecord::Migration
  def change
    create_table :top_category_ships do |t|

      t.string :name

      t.timestamps
    end
  end
end
