select count (*) from orders
where 
orders.submitter_email = 'exampleprovider@gmail.com'
and orders.status = 'awaiting pre-approval'