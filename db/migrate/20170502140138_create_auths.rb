class CreateAuths < ActiveRecord::Migration[5.0]
  def change
    create_table :auths do |t|
      t.string :auth
      t.string :book
      t.string :biography
      t.timestamps
    end
  end
end
