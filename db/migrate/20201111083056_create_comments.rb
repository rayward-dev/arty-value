class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :art_id
      t.text :text
      t.integer :review_price
      t.integer :review_point
      t.timestamps
    end
  end
end
