class CreatePracticals < ActiveRecord::Migration
  def change
    create_table :practicals do |t|
      t.string :title
      t.string :aim
      t.integer :subject_id
      t.integer :college_id
      t.text :description

      t.timestamps null: false
    end
  end
end
