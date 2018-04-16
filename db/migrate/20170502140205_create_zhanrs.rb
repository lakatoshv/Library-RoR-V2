class CreateZhanrs < ActiveRecord::Migration[5.0]
  def change
    create_table :zhanrs do |t|
      t.string :zhanr

      t.timestamps
    end
  end
end
