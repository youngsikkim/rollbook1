class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.text :description
      t.string :video_location
      t.integer :course_id

      t.timestamps
    end
  end
end
