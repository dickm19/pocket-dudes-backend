class CreateItem < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :kind
      t.integer :user_id
      t.timestamps
    end
  end
end
