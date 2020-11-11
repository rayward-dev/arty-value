class CreateArts < ActiveRecord::Migration[6.0]
  def change
    create_table :arts do |t|
      t.string :title,null: false
      t.text :description
      t.integer :price
      t.integer :value_point
      t.string :status
      t.integer :user_id
      t.timestamps
    end
  end
end
