class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :photo, null: false 
      t.belongs_to :photographer, null: false 

      t.timestamps null: false 
    end
  end
end
