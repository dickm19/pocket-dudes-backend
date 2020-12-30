class CreatePet < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.text :name
      t.integer :age
      t.integer :happiness
      t.integer :hunger
      t.integer :pet_image_url_id
      t.integer :user_id
      t.boolean :current_pet
      t.timestamps
    end
  end
end
