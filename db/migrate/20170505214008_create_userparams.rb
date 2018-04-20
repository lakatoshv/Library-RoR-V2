class CreateUserparams < ActiveRecord::Migration[5.0]
  def change
    create_table :userparams do |t|
      t.string :firstname
      t.string :lastname
      t.string :city
      t.integer :user_id

      t.timestamps
    end
  end
end
