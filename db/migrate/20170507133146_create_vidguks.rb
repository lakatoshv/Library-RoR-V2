class CreateVidguks < ActiveRecord::Migration[5.0]
  def change
    create_table :vidguks do |t|
      t.string :name
      t.string :title_book
      t.string :vidguk
      t.string :date

      t.timestamps
    end
  end
end
