class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :user_id
      t.text :title, presence: true
      t.text :url, presence: true
      t.timestamps null:false
    end

  end
end
