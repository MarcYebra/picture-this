class AddPortfolioToPhotographers < ActiveRecord::Migration[5.2]
  def change
    add_column :photographers, :portfolio, :string
  end
end
