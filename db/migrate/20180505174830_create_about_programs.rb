class CreateAboutPrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :about_programs do |t|
      t.string :version
      t.string :subversion
      t.string :made
      t.string :date

      t.timestamps
    end
  end
end
