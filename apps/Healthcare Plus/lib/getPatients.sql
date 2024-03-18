select * from appointments 
left join patients 
on appointments.patient_id = patients.id
where appointments.date >= {{moment().format('MM-DD-YYYY')}}
limit 30