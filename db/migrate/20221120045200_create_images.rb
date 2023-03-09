class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :photo_url
      t.belongs_to :photographer

      t.timestamps null: false 
    end
  end
end
