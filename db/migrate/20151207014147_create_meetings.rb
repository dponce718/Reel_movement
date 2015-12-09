class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :start_time
      t.datetime  :workout_one
      t.datetime  :workout_two
      t.datetime  :workout_three
      t.datetime  :workout_four
      t.datetime  :workout_five
      t.datetime  :workout_six
      t.datetime  :workout_seven
      t.datetime  :middle
      t.datetime  :workout_eight
      t.datetime  :workout_nine
      t.datetime  :workout_ten
      t.datetime  :workout_eleven
      t.datetime  :workout_twelve
      t.datetime  :workout_thirteen
      t.datetime  :workout_fourteen
      t.datetime  :workout_fifteen
      t.datetime  :end_date

      t.timestamps null: false
    end
  end
end
