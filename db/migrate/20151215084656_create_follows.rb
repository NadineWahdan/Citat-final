class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.references :follower, foreign_key: true, null: false, index: true
      t.references :followed, foreign_key: true, null: false, index: true
    
      t.timestamps null: false
    end
  end
end
