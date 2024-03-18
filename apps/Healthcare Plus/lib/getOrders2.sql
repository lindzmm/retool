select orders.patient_id, orders.code, orders.description, orders.units, orders.dosage, orders.appointment_id, orders.reason_description, orders.reason_code, orders.provider_id, orders.start_date, orders.stop_date, orders.status, orders.id, (patients.first || ' ' || patients.last) as patient_fullname from orders
left join patients 
on orders.patient_id = patients.id
where orders.reason_description IS NOT NULL
limit 10