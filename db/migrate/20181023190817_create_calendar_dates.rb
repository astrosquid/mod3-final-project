class CreateCalendarDates < ActiveRecord::Migration[5.2]
  def change
    create_table :calendar_dates do |t|
      t.datetime :date
      # t.has_many :events
      t.timestamps
    end
  end
end
