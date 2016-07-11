class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :title
      t.text :content
      t.integer :char_count
      t.text :URL
      t.boolean :private
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
