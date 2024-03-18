select count (*) from appointments
where appointments.date = {{moment().subtract(1, 'days').format('MM-DD-YYYY')}}