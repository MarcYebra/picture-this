class CreatePhotographers < ActiveRecord::Migration[5.2]
  def change
    create_table :photographers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :description, null: false
      t.string :location, null: false 
      t.string :profile_photo

      t.timestamps null: false 
    end
  end
end
