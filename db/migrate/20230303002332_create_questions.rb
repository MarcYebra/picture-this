class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question, null: false

      t.timestamps null: false 
    end
  end
end
