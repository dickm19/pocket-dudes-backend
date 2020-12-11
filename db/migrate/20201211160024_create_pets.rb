class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :user_id
      t.integer :age
      t.integer :happiness
      t.integer :hunger
      t.string :image_url
      t.timestamps
    end
  end
end
