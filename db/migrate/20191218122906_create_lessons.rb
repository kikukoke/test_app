class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.datetime :datetime
      t.time :time
      t.date :date

      t.timestamps
    end
  end
end
