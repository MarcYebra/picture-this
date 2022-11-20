class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :photo, null: false
      t.belongs_to :photographer, null: false 

      t.timestamps 
    end
  end
end
