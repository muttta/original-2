class CreateBuinessDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :buiness_diaries do |t|
      t.date :today,                null: false
      t.integer :rate,              null:false
      t.integer :productivity,      null:false
      t.references :daily_result,   null: false,  foreign_key: true
      t.timestamps
    end
  end
end
