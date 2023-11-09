class Author < ActiveRecord::Migration[7.0]
    def change
     add_column :authors,:author_id, :integer
      # create_table :authors do |t|
      #   t.string :name, null: false
      #   t.integer :author_id
      # end
  end
end
