class CreateOlympicmedles < ActiveRecord::Migration
  def change
    create_table :olympicmedles do |t|
      t.string :athlete_name
      t.text :event
      t.string :country
      t.string :medal_type
      t.date :eventdate

      t.timestamps null: false
    end
  end
end
