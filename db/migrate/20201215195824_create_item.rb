class CreateItem < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.text :name
      t.text :image
      t.text :kind
      t.integer :user_id
      t.timestamps
    end
  end
end
