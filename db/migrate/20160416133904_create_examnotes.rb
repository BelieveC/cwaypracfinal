class CreateExamnotes < ActiveRecord::Migration
  def change
    create_table :examnotes do |t|
      t.string :topic
      t.integer :subject_id
      t.integer :college_id
      t.text :tips

      t.timestamps null: false
    end
  end
end
