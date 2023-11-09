class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.integer :category_id
      t.text :title
      t.text :description
      t.integer :author_id
      t.string :integer

      t.timestamps
    end
  end
end
