class CreateDailyResults < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_results do |t|
      t.date      :today,        null: false
      t.integer   :sales,        null: false
      t.integer   :man_hr,       null: false
      t.text      :event
      t.timestamps
    end
  end
end
