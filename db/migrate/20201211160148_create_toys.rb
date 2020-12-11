class CreateToys < ActiveRecord::Migration[6.1]
  def change
    create_table :toys do |t|
      t.string :name
      t.string :image_url
      t.integer :user_id
      t.integer :cost
      t.integer :points
      t.timestamps
    end
  end
end
