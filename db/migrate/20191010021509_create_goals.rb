class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :description
      t.date :due_date
      t.time :due_time
      t.text :notes
      t.string :theme_color
      t.string :icon
      t.timestamps
    end
  end
end
