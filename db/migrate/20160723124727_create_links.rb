class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title, presence: true
      t.timestamps null:false

    end

  end
end
