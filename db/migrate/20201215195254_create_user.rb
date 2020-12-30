class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :username
      t.integer :points
      t.integer :high_score

      t.timestamps
    end
  end
end
