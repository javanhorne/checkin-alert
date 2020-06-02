task({ :reminders => :environment }) do
  #Look in flights table
  #Find the records where the departs at is 24hrs from now + 15mins or less && Reminder is False

  #Send message
  #Change Reminder to True

  cutoff = 24.hours.from_now + 15.minutes
  flights = Flight.where( :reminder => false ).where({ "time < ?", cutoff})

  flights.each do |flight|

    u_id = flight.user_id
    the_user = flight.owner
    p the_user.phone_number

  end 

end