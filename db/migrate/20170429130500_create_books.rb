class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :auth
      t.string :zhanr
      t.string :pages_qty
      t.text :description
      t.text :mini_description
      t.integer :likes_qty
      t.integer :dislikes_qty
      t.string :image_url
      t.string :url_to_book
      t.string :name_of_file
      t.string :language
      t.string :rozshirennya 
      t.string :origin_url_to_book
      t.timestamps
    end
  end
end
