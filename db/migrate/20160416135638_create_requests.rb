class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.integer :subject_id
      t.integer :college_id
      t.integer :type_id
      t.text :description

      t.timestamps null: false
    end
  end
end
