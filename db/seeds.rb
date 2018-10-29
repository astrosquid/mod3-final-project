puts "Adding CalendarDates."
CalendarDate.create(date: 'October 24, 2018')
CalendarDate.create(date: 'October 10, 2018')

puts "Adding Events."
Event.create(title: "Dinner with Grandma", location: "Grandma's", calendar_date_id: 1)
Event.create(title: "Go to Flatiron", location: "11 Broadway", calendar_date_id: 2)
