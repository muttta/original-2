class BuinessDiary < ApplicationRecord
  belongs_to  :daily_result
  belongs_to  :monthly_goal

  validates :daily_result_id, :today, :rate, :productivity,  presence: true
end
