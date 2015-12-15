class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body
      t.references :user, foreign_key: true, null: false, index: true
      t.timestamps null: false	
    end
  end
end
