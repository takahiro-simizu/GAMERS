class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text :game_name, null: false
      t.string :image_id
      t.text :review, null: false
      t.string :machine, null: false
      t.integer :user_id

      t.timestamps
    end
  end
end
