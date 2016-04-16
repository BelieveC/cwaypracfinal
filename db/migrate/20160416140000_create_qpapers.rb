class CreateQpapers < ActiveRecord::Migration
  def change
    create_table :qpapers do |t|
      t.string :examname
      t.integer :subject_id
      t.integer :college_id
      t.string :teacher
      t.date :date

      t.timestamps null: false
    end
  end
end
