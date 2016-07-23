class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title,  presence: true
      t.timestamps null: false

    end
  end
end
