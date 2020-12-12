class PetImageUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :pet_image_urls do |t|
      t.string :image_url
      t.timestamps
    end
  end
end
