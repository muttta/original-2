class CreateMonthlyGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :monthly_goals do |t|
      t.date      :day,                null: false
      t.integer   :sales_expectation,  null: false
      t.integer   :labor_cost,         null: false
      t.text      :event,              null: false
      t.timestamps
    end
  end
end
