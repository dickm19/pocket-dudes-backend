class CreatePetImageUrl < ActiveRecord::Migration[6.1]
  def change
    create_table :pet_image_urls do |t|
      t.text :image_url

      t.timestamps
    end
  end
end
