select count (*) from appointments
where appointments.date = {{moment().format('MM-DD-YYYY')}}