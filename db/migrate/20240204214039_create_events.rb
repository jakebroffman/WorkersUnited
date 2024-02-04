class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :location
      t.time :start_time
      t.integer :duration
      t.string :description
      t.references :organizer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
