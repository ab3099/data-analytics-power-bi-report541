-- Determine how many staff are there in all of the UK stores
SELECT SUM(staff_numbers) as "Total Staff in the UK"
FROM
   dim_store
WHERE
   country = 'UK'
