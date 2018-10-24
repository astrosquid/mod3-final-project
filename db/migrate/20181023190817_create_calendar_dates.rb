class CreateCalendarDates < ActiveRecord::Migration[5.2]
  def change
    create_table :calendar_dates do |t|
      t.date :date

      t.timestamps
    end
  end
end
