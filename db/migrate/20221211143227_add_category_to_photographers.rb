class AddCategoryToPhotographers < ActiveRecord::Migration[5.2]
  def change
    add_column :photographers,  :category, :string 
  end
end
