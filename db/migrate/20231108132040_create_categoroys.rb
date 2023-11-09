class CreateCategoroys < ActiveRecord::Migration[7.0]
  def change
    create_table :categoroys do |t|
      t.string :name
      t.integer :Categoroy_id
      t.timestamps
    end
  end
end
