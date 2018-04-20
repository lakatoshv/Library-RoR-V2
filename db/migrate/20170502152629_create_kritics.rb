class CreateKritics < ActiveRecord::Migration[5.0]
  def change
    create_table :kritics do |t|
      t.string :name
      t.string :title_book
      t.string :recensiya
      t.text :ocinka

      t.timestamps
    end
  end
end
