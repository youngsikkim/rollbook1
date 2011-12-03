class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.text :description
      t.integer :course_id
      t.string :video_location
      t.integer :length

      t.timestamps
    end
  end
end
