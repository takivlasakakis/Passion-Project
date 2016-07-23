class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :subject_id
      t.integer :user_id
      t.text :title, presence: true
      t.timestamps null:false

    end

  end
end
