class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.integer :price
      t.string :status

      t.timestamps
    end
  end
end
